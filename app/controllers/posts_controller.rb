class PostsController < ApplicationController
  skip_before_action :authorized

  def index
    @posts = Post.all
    render json: @posts
  end

  def show
    @post = Post.(params[:id])
    render json: @post
  end

  def create
    @post = Post.create(post_params)
    render json: @post
  end

  def update
    Post.find(params[:id]).update(post_params)
    render json: Post.find(params[:id])
  end


  def destroy
   render json: Post.find(params[:id]).destroy
  end

  private

  def post_params
    params.require(:post).permit(:content, :image, :user_id)
  end

end
