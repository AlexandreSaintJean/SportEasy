class ProductsController < ApplicationController

  skip_before_action :authenticate_user!
  before_action :find_prod, only: [:show, :edit, :update, :destroy]


  def index
    @products = Product.all
  end

  def show
    @post = Post.new
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
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end


  def update
    @product = Product.update(prod_params)
        redirect_to dashboard_path
  end


  def destroy
    @product.destroy
    redirect_to dashboard_path
  end


  private


  def prod_params
    params.require(:product).permit(:name, :description, :city, :price_per_day, :category_id, :user_id, photos: [])
  end

  def find_prod
    @product = Product.find(params[:id])
  end
end
