class PostsController < ApplicationController

  before_action :find_product, only: [:new, :create, :edit, :update]

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
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @product
    else
      render :edit
    end

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
