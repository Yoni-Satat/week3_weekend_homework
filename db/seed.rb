require_relative('../models/customer.rb')
require_relative('../models/film.rb')
require_relative('../models/tickets.rb')
require('pry')


customer1 = Customer.new({ 'name' => 'Yoni', 'funds' => 100})
customer2 = Customer.new({ 'name' => 'Miguel', 'funds' => 150})
customer3 = Customer.new({ 'name' => 'Darren', 'funds' => 125})
customer4 = Customer.new({ 'name' => 'Sandy', 'funds' => 200})
customer1.save
customer2.save
customer3.save
customer4.save


film1 = Film.new({ 'title' => 'Back to The Future', 'price' => 25})
film2 = Film.new({ 'title' => 'Shawshank Redumption', 'price' => 30})
film3 = Film.new({ 'title' => 'The Smurfs', 'price' => 24})
film4 = Film.new({ 'title' => 'The Princess Bride', 'price' => 25})
film1.save()
film2.save()
film3.save()
film4.save()

# tickect1 = Ticket.new({'customer_id' => customer1.id, 'film_id' => film2.id})
# tickect2 = Ticket.new({'customer_id' => customer1.id, 'film_id' => film1.id})
# tickect3 = Ticket.new({'customer_id' => customer2.id, 'film_id' => film2.id})
# tickect4 = Ticket.new({'customer_id' => customer2.id, 'film_id' => film3.id})
# tickect5 = Ticket.new({'customer_id' => customer3.id, 'film_id' => film4.id})
# tickect6 = Ticket.new({'customer_id' => customer4.id, 'film_id' => film4.id})
# tickect7 = Ticket.new({'customer_id' => customer4.id, 'film_id' => film3.id})
# tickect8 = Ticket.new({'customer_id' => customer2.id, 'film_id' => film1.id})

binding.pry
nil
