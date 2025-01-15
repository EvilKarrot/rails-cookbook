class RecipesController < ApplicationController

  def show
    @category = Category.find(params[:category_id])
    @recipe = Recipe.find(params[:id])
  end

end
