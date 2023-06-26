class RestaurantsController < ApplicationController
     ###show all restaurants
     def index
          restaurants = Restaurant.all
          render json: restaurants 
     end

     ###get reastaurant by id
     def show 
          restaurants = Restaurant.find_by(id: params[:id])
          if restaurants
               render json: restaurants
          else
               render json: {error:"Restaurant not found"}
          end
     end
end
