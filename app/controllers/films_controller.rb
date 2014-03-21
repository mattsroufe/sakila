class FilmsController < ApplicationController

  def index
    @categorised_films = Category.includes(:films)
  end

  def show
    @film = Film.includes(:actors).find(params[:id])
  end
end
