class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :destroy]

  def index
    @events = Event.all
  end

  def show
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

    def edit
    end

    def update
      @event.update(event_params)
      if @event.valid?
        redirect_to @event
      else
        redirect_to edit_event_path
      end

    end

    def destroy

      @event.destroy
      redirect_to events_path
    end

  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :social_action_id, :when, :location, :img_url)
  end

end
