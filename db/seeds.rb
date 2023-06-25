# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

restaurant1 = Restaurant.create(
     name: "Java house",
     address: "United mall Kisumu"
   )
   
   restaurant2 = Restaurant.create(
     name: "Galitos",
     address: "Mega plaza"
   )
   
   restaurant3 = Restaurant.create(
     name: "Star dishes",
     address: "Oginga Odinga Street"
   )
   
   # Seed pizzas
   pizza1 = Pizza.create(
     name: "Pepperoni",
     ingredients: "Dough, pepperoni, tomatoes"
   )
   
   pizza2 = Pizza.create(
     name: "Hawaiian",
     ingredients: "Pineapple, dough, water"
   )
   
   pizza3 = Pizza.create(
     name: "Italian",
     ingredients: "Chicken, sauce, onions, dough"
   )
   
   # Seed restaurant pizzas
   RestaurantPizza.create(
     restaurant: restaurant1,
     price: 25,
     pizza: pizza1
   )
   
   RestaurantPizza.create(
     restaurant: restaurant1,
     price: 29,
     pizza: pizza3
   )
   
   RestaurantPizza.create(
     restaurant: restaurant2,
     price: 18,
     pizza: pizza2
   )
   
   RestaurantPizza.create(
     restaurant: restaurant2,
     price: 25,
     pizza: pizza1
   )
   
   RestaurantPizza.create(
     restaurant: restaurant2,
     price: 13,
     pizza: pizza3
   )
   
   RestaurantPizza.create(
     restaurant: restaurant3,
     price: 5,
     pizza: pizza3
   )
   