class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :set_profile, only: [:new, :create, :edit, :update]
  # GET /events
  # GET /events.json
  def index
    @events ||= Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @publish = @event.publish?
  end

  # GET /events/new
  def new
    @event = Event.new
    @event.start_date, @event.end_date = params[:date], params[:date]
    time = Time.now
    @event.start_time, @event.end_time = time, time
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    @event.save
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    @event.update(event_params)
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
  end

  private
  
  # Use callbacks to share common setup or constraints between actions.
  def set_event
    @event ||= Event.find(params[:id])
  end

  def set_profile
    @profiles ||= Profile.list
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def event_params
    params.require(:event).permit(:title, :start_date, :end_date, :start_time, :end_time, :description, :publish, :profile_id)
  end
end
