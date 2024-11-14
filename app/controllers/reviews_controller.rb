class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:new, :create, :destroy]

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to review_path(@review)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.new(review_params)
    @review.destroy
    redirect_to restaurant_path(@review.restaurant)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
