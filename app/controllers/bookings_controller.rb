class BookingsController < ApplicationController
  before_action :set_booking, only: :destroy
  def create
  @booking = Booking.new(booking_params)
  @bathroom = Bathroom.find(params[:bathroom_id])

  @booking.bathroom = @bathroom

    if @booking.save
      redirect_to @bathroom
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
    redirect_to @booking.bathroom
  end

  def my_bookings

  end


  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :user_id, :bathroom_id)
  end

end
