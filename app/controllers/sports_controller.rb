class SportsController < ApplicationController

  def index
    @sports = Sport.all
  end

  def show
    @sport = Sport.find_by(id: params[:id])
  end

  def new
    @sports = Sport.all
  end

  def create
    @sport = Sport.new
    @sport.name = params[:name]
    @sport.description = params[:description]
    @sport.equipment = params[:equipment]

    if @sport.save
      redirect_to "/sports/#{ @sport.id }"
    else
      render 'new'
    end
  end

  def edit
    @sport = Sport.find_by(id: params[:id])
  end

  def update
    @sport = Sport.find_by(id: params[:id])
    @sport.name = params[:name]
    @sport.description = params[:description]
    @sport.equipment = params[:equipment]

    if @sport.save
      redirect_to "/sports/#{ @sport.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @sport = Sport.find_by(id: params[:id])
    @sport.destroy


    redirect_to "/sports"
  end
end
