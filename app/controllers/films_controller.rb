class FilmsController < ApplicationController

  def index
    if params[:category_id]
      @category = Category.find(params[:category_id])
      @films = @category.films.filter_by('title', params[:letter]).page(params[:page]).per(5)
    else
      @films = Film.filter_by('title', params[:letter]).page(params[:page]).per(5)
    end
  end

  def show
    @film = Film.includes(:actors).find(params[:id])
  end
end
