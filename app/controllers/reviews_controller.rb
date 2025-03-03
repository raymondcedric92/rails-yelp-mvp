class ReviewsController < ApplicationController
  before_action :set_restaurant, only: %i[create]

  def create
    @review = @restaurant.reviews.new(review_params)

    if @review.save
      redirect_to @restaurant, notice: 'Review added successfully!'
    else
      render 'restaurants/show', status: :unprocessable_entity
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
