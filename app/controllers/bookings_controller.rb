class BookingsController < ApplicationController
  before_action :set_booking, only: :destroy
  def create
  # @bathroom = Bathroom.create(bathroom_params)
  # @bathroom.user = current_user
  @booking = Booking.new(booking_params)
  @bathroom = Bathroom.find(params[:bathroom_id])

  @booking.bathroom = @bathroom

  @booking.user = current_user

  authorize @booking
  # @thread = current_user.threads.find params[:id]
  # @thread.messages.create! :text => params[:text]
    if @booking.save
      redirect_to my_bookings_bookings_path
    else
      render :new
    end
  end


  def my_bookings
    authorize Booking.new
    @bookings = current_user.bookings
  end

  def destroy
    authorize @booking

    @booking.destroy
    redirect_to my_bookings_bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end

end
