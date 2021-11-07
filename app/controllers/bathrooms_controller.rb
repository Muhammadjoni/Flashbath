class BathroomsController < ApplicationController
  before_action :set_bathroom, only: [:show, :edit, :update, :destroy]
  def index
    @bathrooms = Bathroom.all
  end

  def show
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
    redirect_to bathrooms_path
  end

  def my_rents

  end


  private

  def set_bathroom
    @bathroom = bathroom.find(params[:id])
  end

  def bathroom_params
    params.require(:bathroom).permit(:title, :address, :content, :user_id)
  end

end
