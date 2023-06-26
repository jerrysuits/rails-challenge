class RestaurantsController < ApplicationController
     ###show all restaurants
     def index
          restaurants = Restaurant.all
          render json: restaurants 
     end

     
end
