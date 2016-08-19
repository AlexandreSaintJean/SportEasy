class PostsController < ApplicationController

  before_action :find_product, only: [:new]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @product = Product.find(params[:product_id])
    @post = Post.new(post_params)
    @post.product = @product
    @post.user = current_user
    @post.save
    redirect_to product_path(@product)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
  end

  def delete
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to @product
  end


  private

  def post_params
    params.require(:post).permit(:question, :answer, :product_id, :user_id)
  end

  def find_product
    @product = Product.find(params[:product_id])
  end

end
