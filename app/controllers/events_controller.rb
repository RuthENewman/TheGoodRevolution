class EventsController < ApplicationController
  before_action :set_event, only: [:show]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.valid?
      @event.save
      redirect_to @event
    else
      render 'new'
    end
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :social_action_id, :when, :location)
  end

end
