class FilmsController < ApplicationController

  def index
    @films = Film.all
  end

  def show
    @film = Film.includes(:actors).find(params[:id])
  end
end
