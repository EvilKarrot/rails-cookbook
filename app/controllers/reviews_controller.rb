class ReviewsController < ApplicationController
  before_action :set_category, only: %i[create]

  def create
    @review = @category.reviews.new(review_params)
    if @review.save
      redirect_to category_path(@category)
    else
      # @bookmarks = @category.bookmarks.includes(:recipe)
      # @reviews = @category.reviews
      render "categories/show", status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to category_path(@review.category)
  end

  private

  def set_category
    @category = Category.find(params[:category_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
