class ReviewsController < ApplicationController
  def create
  @review = Review.new(review_params)
  @bathroom = Bathroom.find(params[:bathroom_id])

  @review.bathroom = @bathroom

    if @review.save
      redirect_to @bathroom
    else
      render :new
    end
  end
end
