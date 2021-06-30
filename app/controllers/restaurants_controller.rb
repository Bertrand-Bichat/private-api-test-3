class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @restaurants = Restaurant.all
    if @restaurants
      render json: @restaurants
    else
      render json: errors_json
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    if @restaurants
      render json: @restaurant
    else
      render json: errors_json
    end
  end

  private

  def errors_json
    { Errors: 'Restaurant(s) are not available !' }
  end
end
