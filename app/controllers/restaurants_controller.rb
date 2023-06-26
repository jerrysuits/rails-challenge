class RestaurantsController < ApplicationController
     ###show all restaurants
     def index
          restaurants = Restaurant.includes(:pizzas).all
          render json: restaurants , include: :pizzas
     end

     ###get reastaurant by id
     def show 
          restaurants = Restaurant.includes(:pizzas).find_by(id: params[:id])
          if restaurants
               render json: restaurants, include: :pizzas
          else
               render json: {error:"Restaurant not found"}
          end
     end

     ###delete restaurant by id
     def destroy
          restaurant = Restaurant.find_by(id: params[:id])
          if restaurant
            restaurant.restaurant_pizzas.destroy_all
            restaurant.destroy
            render json: { success: "Restaurant deleted successfully" }
          else
            render json: { error: "Restaurant not found" }, status: :not_found
          end
     end
end
