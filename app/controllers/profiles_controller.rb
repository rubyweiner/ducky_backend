class ProfilesController < ApplicationController
  skip_before_action :authorized, only: [:index, :create, :update, :show]

  def index
    @profile = Profile.all
    render json: @profile
  end

  def show
    @profile = Profile.find(params[:id])
    render json: @profile
  end

  def create
    @profile = Profile.create(profile_params)
    render json: @profile
  end

  def update
    Profile.find(params[:id]).update(profile_params)
    render json: Profile.find(params[:id])
  end


  def destroy
   render json: Profile.find(params[:id]).destroy
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :dob, :hometown, :current_location, :github, :blog, :bio, :profile_pic, :cover_photo, :occupation, :education, :user_id)
  end
end
