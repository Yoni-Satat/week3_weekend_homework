require_relative("../db/sql_runner")

class Film

  attr_reader :id
  attr_accessor :title, :price

  def initialize(options)
    @id = options['id'].to_i
    @title = options['title']
    @price = options['price'].to_i
  end

  def self.find_all()
    sql = "SELECT * FROM films"
    values = []
    films = SqlRunner.run(sql, values)
    result = films.map { |film| Film.new(film)}
    return result
  end

  def save()
    sql = "INSERT INTO films
    (
      title,
      price
    )
    VALUES
    (
      $1, $2
    )
    RETURNING id"
    values = [@title, @price]
    film = SqlRunner.run( sql, values ).first
    @id = film['id'].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM films"
    values = []
    SqlRunner.run(sql, values)
  end

  def delete_film()
    sql = "DELETE FROM films WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def update()
    sql = "
        UPDATE films
        SET
        (
          title,
          price
        ) = (
          $1, $2
        ) WHERE id = $3
      "
      values = [@title, @price, @id]
      SqlRunner.run(sql, values)
  end

  def customers()
    sql = "SELECT customers.* FROM customers
          INNER JOIN tickets
          ON tickets.customer_id = customers.id
          WHERE tickets.film_id = $1"
    values = [@id]
    results = SqlRunner.run(sql, values)
    customers = results.map {|customer| Customer.new(customer)}
    return customers
  end

  def customers_per_film
    result = customers.count
    return result
  end
end
