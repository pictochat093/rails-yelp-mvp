class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end


  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end


  def new
    @restaurant = Restaurant.new
  end


  def edit
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    end
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
  end

  def destroy
    @restaurant.destroy!
  end

  private
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :rating)
    end
  end
end
