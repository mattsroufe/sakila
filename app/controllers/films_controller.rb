class FilmsController < ApplicationController

  def index
    term = params[:letter] || params[:term] # Filterable module uses different param than jQuery autocomplete on search box
    if params[:category_id]
      @category = Category.find(params[:category_id])
      films = @category.films
    else
      films = Film.all
    end
    @films = films.filter(:title, term).page(params[:page]).per(5)

    respond_to do |format|
      format.html
      format.json
    end
  end

  def show
    @film = Film.includes(:actors).find(params[:id])
  end
end
