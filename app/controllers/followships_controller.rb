class FollowshipsController < ApplicationController
  skip_before_action :authorized

  def index
    @followships = Followship.all
    render json: @followships
  end

  def show
    @followship = Followship.(params[:id])
    render json: @followship
  end

  def create
    @followship = Followship.create(followship_params)
    render json: @followship
  end

  def update
    Followship.find(params[:id]).update(followship_params)
    render json: Followship.find(params[:id])
  end


  def destroy
   render json: Followship.find(params[:id]).destroy
  end

  private

  def followship_params
    params.require(:followship).permit(:user_id, :follower_id)
  end

end
