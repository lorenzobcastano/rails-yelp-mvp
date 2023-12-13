class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @task.save

    redirect_to tasks_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :addres)
  end
end
