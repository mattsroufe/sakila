class ActorsController < ApplicationController

  def index
    @actors = Actor.filter_by_last_name(params[:letter]).page(params[:page])
  end

  def show
    @actor = Actor.find(params[:id])
  end
end
