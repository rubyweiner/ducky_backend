class EventsController < ApplicationController
  skip_before_action :authorized

  def index
    @events = Event.all
    render json: @events
  end

  def show
    @event = Event.find(params[:id])
    render json: @event
  end

  def create
    @event = Event.create(event_params)
    render json: @event
  end

  def update
    Event.find(params[:id]).update(event_params)
    render json: Event.find(params[:id])
  end


  def destroy
   render json: Event.find(params[:id]).destroy
  end

  private

  def event_params
    params.require(:event).permit(:name, :location, :description, :date, :time, :cover_photo, :host_id)
  end

end
