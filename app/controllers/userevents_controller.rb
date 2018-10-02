class UsereventsController < ApplicationController
  skip_before_action :authorized

  def index
    @userevents = Userevent.all
    render json: @userevents
  end

  def show
    @userevent = Userevent.find(params[:id])
    render json: @userevent
  end

  def create
    @userevent = Userevent.create(userevent_params)
    render json: @userevent
  end

  def update
    Userevent.find(params[:id]).update(userevent_params)
    render json: Userevent.find(params[:id])
  end


  def destroy
   render json: Userevent.find(params[:id]).destroy
  end

  private

  def userevent_params
    params.require(:userevent).permit(:invitee_id, :event_id)
  end

end
