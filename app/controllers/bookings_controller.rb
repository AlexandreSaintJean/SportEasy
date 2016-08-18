class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.product = Product.find(params[:product_id])
    @booking.user = current_user
    if @booking.save
      dashboard_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :product_id, :user_id)
  end

end
