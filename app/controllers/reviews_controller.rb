class ReviewsController < ApplicationController
  def create
  @review = Review.new(review_params)
  @bathroom = Bathroom.find(params[:bathroom_id])
  @review.user = current_user

  @review.bathroom = @bathroom
    if @review.save
      redirect_to @bathroom
    else
      redirect_back fallback_location: @bathroom
    end
  end

  def top
    @reviews = Review.where("rating >= ?", 4).first(3)
    authorize Review.new
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
