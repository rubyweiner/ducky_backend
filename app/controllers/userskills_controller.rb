class UserskillsController < ApplicationController
  skip_before_action :authorized

  def index
    @userskill = Userskill.all
    render json: @userskill
  end

  def show
    @userskill = Userskill.find(params[:id])
    render json: @userskill
  end

  def create
    @userskill = Userskill.create(userskill_params)
    render json: @userskill
  end

  def update
    Userskill.find(params[:id]).update(userskill_params)
    render json: Userskill.find(params[:id])
  end


  def destroy
   render json: Userskill.find(params[:id]).destroy
  end

  private

  def userskill_params
    params.require(:userskill).permit(:user_id, :skill_id)
  end

end
