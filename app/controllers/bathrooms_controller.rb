class BathroomsController < ApplicationController
  before_action :set_bathroom, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @bathrooms = policy_scope(Bathroom).order(created_at: :asc)

    @markers = @bathrooms.map do |bathroom|
      {
        ltd: bathroom.latitude,
        lng: bathroom.longitude,
        info_window: render_to_string(partial: "info_window", locals: { bathroom: bathroom })
        # image_url: helpers.asset_url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpg6GFI89o13-OgRqluG6HwghoFoLTHomjSA&usqp=CAU')
      }
    end
  end

  def show

    @markers = [{
      ltd: @bathroom.latitude,
      lng: @bathroom.longitude,
      info_window: render_to_string(partial: "info_window", locals: { bathroom: @bathroom })
    }]

    @review = Review.new
    @average = @bathroom.reviews.map(&:rating).sum / @bathroom.reviews.size
    authorize @bathroom

  end

  def new
    @bathroom = Bathroom.new
    authorize @bathroom
  end

  def create
    @bathroom = Bathroom.create(bathroom_params)
    @bathroom.user = current_user
    authorize @bathroom

    if @bathroom.save
      redirect_to @bathroom, notice: 'bathroom was successfully created.'
    else
      render :new
    end
  end

  def edit
    authorize @bathroom
  end

  def update
    @bathroom.update(bathroom_params)
    redirect_to @bathroom
    authorize @bathroom
  end

  def destroy
    @bathroom.destroy
    redirect_to @bathroom
    authorize @bathroom
  end

  def my_rents
    @bathrooms = current_user.bathrooms
  end


  private

  def set_bathroom
    @bathroom = Bathroom.find(params[:id])
  end

  def bathroom_params
    params.require(:bathroom).permit(:title, :address, :photo, :content, :price)
  end

end
