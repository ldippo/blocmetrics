class EventsController < ApplicationController
  # GET /events
  # GET /events.json
  def index
    @events = Event.all
    render json: @events
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])
    render json: @event
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    if @event.save
      head :created
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  private
    
    def event_params
      params[:event].permit(:name, :domain)
    end
end
