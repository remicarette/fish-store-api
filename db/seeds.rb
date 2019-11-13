# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Order.destroy_all
Fish.destroy_all
Bill.destroy_all

puts "---------------"
puts "Creating fish"
puts "---------------"
fish1 = Fish.new(name: "My lovely fish", price: 250, quantity: 10, available: true, description: "my lovely description")
fish1.save!
puts "Fish 1 created"

fish2 = Fish.new(name: "My nice fish", price: 350, quantity: 20, available: true, description: "my lovely description")
fish2.save!
puts "Fish 2 created"

fish3 = Fish.new(name: "My nice fish", price: 500, quantity: 10, available: true, description: "my lovely description")
fish3.save!
puts "Fish 3 created"


puts "---------------"
puts "Creating bills"
puts "---------------"

bill1 = Bill.new(name: "FF0001")
bill1.save!

puts "Bill 1 created"

bill2 = Bill.new(name: "FF0001")
bill2.save!
puts "Bill 2 created"

puts "---------------"
puts "Creating orders"
puts "---------------"
order1 = Order.new(total: 250, bill: bill1, fish: fish1)
order1.save!
puts "Order 1 created"


order2 = Order.new(total: 350, bill: bill1, fish: fish2)
order2.save!
puts "Order 2 created"

order3 = Order.new(total: 500, bill: bill1, fish: fish3)
order3.save!
puts "Order 3 created"

puts
puts "---------------"
puts "Seeds completed"
puts "---------------"
puts
puts "---------------"
puts "#{Fish.count} fishes created "
puts "#{Bill.count} bills created"
puts "#{Order.count} order created"
puts "---------------"
