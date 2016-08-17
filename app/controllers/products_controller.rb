class ProductsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
     @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @booking = Booking.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(prod_params)
    @product.user = current_user
    if @product.save
    redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to product_path(@products)
  end

  private



  def prod_params
    params.require(:product).permit(:name, :description, :city, :price_per_day, :category_id, :user_id)
  end
end

