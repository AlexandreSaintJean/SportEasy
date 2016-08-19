class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end


  def edit
    @booking = booking.find(params[:id])
  end

  def update
    @product = Product.find(params[:product_id])
    @booking = Booking.find(params[:id])
    @booking.accepted_at = Date.today
    if @booking.save
      redirect_to dashboard_path
    else
      render :edit
    end
  end


  def create
    @booking = Booking.new(booking_params)
    @booking.product = Product.find(params[:product_id])
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path
    else
      render 'product/:id'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :product_id, :user_id, :accepted_at, :comment)
  end

end

