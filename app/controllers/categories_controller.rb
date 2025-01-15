require 'open-uri'
require 'json'

class CategoriesController < ApplicationController
  def index
    @categories = Category.all

    @random_image = @categories.map do |category|
      if category.photo.attached?
        nil
      else
        random_food_image
      end
    end
  end

  def show
    @category = Category.find(params[:id])
    @review = Review.new
    @random_image = random_food_image
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :photo)
  end

  def random_food_image
    api_url = "https://foodish-api.com/api"
    response = URI.open(api_url).read
    JSON.parse(response)["image"]
  end
end
