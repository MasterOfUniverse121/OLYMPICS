class AthletesController < ApplicationController

  def index
    @athletes = Athlete.all
  end

  def show
    @athlete = Athlete.find_by(id: params[:id])
  end

  def new
  end

  def create
    @athlete = Athlete.new
    @athlete.name = params[:name]
    @athlete.age = params[:age]
    @athlete.country = params[:country]

    if @athlete.save
      redirect_to "/athletes/#{ @athlete.id }"
    else
      render 'new'
    end
  end

  def edit
    @athlete = Athlete.find_by(id: params[:id])
  end

  def update
    @athlete = Athlete.find_by(id: params[:id])
    @athlete.name = params[:name]
    @athlete.age = params[:age]
    @athlete.country = params[:country]

    if @athlete.save
      redirect_to "/athletes/#{ @athlete.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @athlete = Athlete.find_by(id: params[:id])
    @athlete.destroy


    redirect_to "/athletes"
  end
end
