class FilmsController < ApplicationController

  def index
    if params[:category_id]
      @category = Category.find(params[:category_id])
      films = @category.films
    else
      films = Film.all
    end
    @films = films.filter(:title, params[:letter]).page(params[:page]).per(5)
  end

  def show
    @film = Film.includes(:actors).find(params[:id])
  end
end
