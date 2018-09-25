class OccupationsController < ApplicationController
  

  def index
    @occupation = Occupation.all
    render json: @occupation
  end

  def show
    @occupation = Occupation.find(params[:id])
    render json: @occupation
  end

  def create
    @occupation = Occupation.create(occupation_params)
    render json: @occupation
  end

  def occupation_params
    params.require(:occupation).permit(:title)
  end
end
