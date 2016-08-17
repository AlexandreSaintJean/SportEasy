class PostsController < ApplicationController

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
    @post = Post.new(post_params)
    if @post.save
      redirect_to product_path(@post)
    else
      render :show
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post.save
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to @product
  end

  private

  def post_params
    params.require(:post).permit(:question, :answer, :product_id, :user_id)
  end

end
