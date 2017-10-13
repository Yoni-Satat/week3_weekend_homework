require_relative('../models/customer.rb')
require_relative('../models/film.rb')
require_relative('../models/tickets.rb')
require('pry')

Ticket.delete_all()
Customer.delete_all()
Film.delete_all()


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

ticket1 = Ticket.new({'customer_id' => customer1.id, 'film_id' => film2.id})
ticket2 = Ticket.new({'customer_id' => customer1.id, 'film_id' => film1.id})
ticket3 = Ticket.new({'customer_id' => customer2.id, 'film_id' => film2.id})
ticket4 = Ticket.new({'customer_id' => customer2.id, 'film_id' => film3.id})
ticket5 = Ticket.new({'customer_id' => customer3.id, 'film_id' => film4.id})
ticket6 = Ticket.new({'customer_id' => customer4.id, 'film_id' => film4.id})
ticket7 = Ticket.new({'customer_id' => customer4.id, 'film_id' => film3.id})
ticket8 = Ticket.new({'customer_id' => customer2.id, 'film_id' => film1.id})
ticket1.save()
ticket2.save()
ticket3.save()
ticket4.save()
ticket5.save()
ticket6.save()
ticket7.save()
ticket8.save()

binding.pry
nil
