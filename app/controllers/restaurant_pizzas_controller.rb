class RestaurantPizzasController < ApplicationController
     def create
       restaurant = Restaurant.find_by(id: params[:restaurant_id])
       pizza = Pizza.find_by(id: params[:pizza_id])
   
       if restaurant && pizza
         restaurant_pizza = RestaurantPizza.create(restaurant: restaurant, pizza: pizza, price: params[:price])
         render json: restaurant_pizza.pizza
       else
         render json: { error: "Restaurant or Pizza not found" }
       end
     end
   end
   