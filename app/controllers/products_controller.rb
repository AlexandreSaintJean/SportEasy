class ProductsController < ApplicationController

  skip_before_action :authenticate_user!
  before_action :find_prod, only: [:show, :edit, :update, :destroy]


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

  def edit
    @product = Product.find(params[:id])
  end


  def update
    @product = Product.update(prod_params)
        redirect_to user_path
  end


  def destroy
    @product.destroy
    redirect_to user_path
  end


  private

  def prod_params
    params.require(:product).permit(:name, :description, :city, :price_per_day, :category_id, :user_id)
  end

  def find_prod
    @product = Product.find(params[:id])
  end
end
