class BookingsController < ApplicationController
  before_action :find_booking, only: [:create, :edit, :update]

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to user_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @booking = Booking.edit(booking_params)
    if @booking.save
      redirect_to user_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :comment)
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
