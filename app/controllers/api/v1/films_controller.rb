class Api::V1::FilmsController < ApplicationController

  def index
    @films = Film.includes(:actors).page(params[:page])
  end

  def show
    @film = Film.includes(:actors).find(params[:id])
  end
end
