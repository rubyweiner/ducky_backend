class FriendshipsController < ApplicationController
  skip_before_action :authorized

  def index
    @friendships = Friendship.all
    render json: @friendships
  end

  def show
    @friendship = Friendship.(params[:id])
    render json: @friendship
  end

  def create
    @friendship = Friendship.create(friendship_params)
    render json: @friendship
  end

  def update
    Friendship.find(params[:id]).update(friendship_params)
    render json: Friendship.find(params[:id])
  end


  def destroy
   render json: Friendship.find(params[:id]).destroy
  end

  private

  def friendship_params
    params.require(:friendship).permit(:user_id, :friend_id)
  end

end
