class BathroomsController < ApplicationController
  before_action :set_bathroom, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @bathrooms = Bathroom.all

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
  end

  def new
    @bathroom = Bathroom.new
  end

  def create
    @bathroom = Bathroom.create(bathroom_params)
    if @bathroom.save
      redirect_to @bathroom, notice: 'bathroom was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @bathroom.update(bathroom_params)
    redirect_to @bathroom
  end

  def destroy
    @bathroom.destroy
    redirect_to @bathroom
  end

  def my_rents
    @bathroom
  end


  private

  def set_bathroom
    @bathroom = Bathroom.find(params[:id])
  end

  def bathroom_params
    params.require(:bathroom).permit(:title, :address, :photo, :content, :user_id)
  end

end
