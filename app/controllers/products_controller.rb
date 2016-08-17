class ProductsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
     @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new

  end

  def create
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to product_path(@products)
  end

  private



  def prod_params
    params.require(:product).permit(:product_id)
  end
end

