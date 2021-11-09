class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  # /restaurants
  def index
    @restaurants = Restaurant.all
  end

  # /restaurants/1
  def show
  end

  # /restaurants/new
  def new
    # create an empty instance so the form can build to the correct path/method
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'new.html.erb'
    end
  end

  # '/restaurants/2/edit'
  def edit
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant)
    else
      render 'edit.html.erb'
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # strong params
  # whitelist the params coming from the form
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating, :category)
  end
end
