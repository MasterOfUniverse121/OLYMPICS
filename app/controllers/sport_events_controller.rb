class SportEventsController < ApplicationController

  def index
    @sport_events = SportEvent.all
  end

  def show
    @sport_event = SportEvent.find_by(id: params[:id])
  end

  def new
  end

  def create
    @sport_event = SportEvent.new
    @sport_event.sport_id = params[:sport_id]
    @sport_event.event_id = params[:event_id]
    @sport_event.arena = params[:arena]

    if @sport_event.save
      redirect_to "/sport_events/#{ @sport_event.id }"
    else
      render 'new'
    end
  end

  def edit
    @sport_event = SportEvent.find_by(id: params[:id])
  end

  def update
    @sport_event = SportEvent.find_by(id: params[:id])
    @sport_event.sport_id = params[:sport_id]
    @sport_event.event_id = params[:event_id]
    @sport_event.arena = params[:arena]

    if @sport_event.save
      redirect_to "/sport_events/#{ @sport_event.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @sport_event = SportEvent.find_by(id: params[:id])
    @sport_event.destroy


    redirect_to "/sport_events"
  end
end
