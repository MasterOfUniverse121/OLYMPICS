class EventAthletesController < ApplicationController

  def index
    @event_athletes = EventAthlete.all
  end

  def show
    @event_athlete = EventAthlete.find_by(id: params[:id])
  end

  def new
  end

  def create
    @event_athlete = EventAthlete.new
    @event_athlete.event_id = params[:event_id]
    @event_athlete.athlete_id = params[:athlete_id]
    @event_athlete.gender = params[:gender]

    if @event_athlete.save
      redirect_to "/event_athletes/#{ @event_athlete.id }"
    else
      render 'new'
    end
  end

  def edit
    @event_athlete = EventAthlete.find_by(id: params[:id])
  end

  def update
    @event_athlete = EventAthlete.find_by(id: params[:id])
    @event_athlete.event_id = params[:event_id]
    @event_athlete.athlete_id = params[:athlete_id]
    @event_athlete.gender = params[:gender]

    if @event_athlete.save
      redirect_to "/event_athletes/#{ @event_athlete.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @event_athlete = EventAthlete.find_by(id: params[:id])
    @event_athlete.destroy


    redirect_to "/event_athletes"
  end
end
