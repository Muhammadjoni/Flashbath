class BookingsController < ApplicationController
  before_action :set_booking, only: :destroy
  def create
  # @bathroom = Bathroom.create(bathroom_params)
  # @bathroom.user = current_user
  # @booking = Booking.new(booking_params)
  # @bathroom = Bathroom.find(params[:bathroom_id])

  # @booking.bathroom = @bathroom

  # @bathroom.user = current_user
  # @thread = current_user.threads.find params[:id]
  # @thread.messages.create! :text => params[:text]
    if @booking.save
      redirect_to bathroom_bookings_path
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
    params.require(:booking).permit(:start_time, :end_time)
  end

end
