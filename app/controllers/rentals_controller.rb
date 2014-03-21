class RentalsController < ApplicationController

  def index
    @rentals = Rental.includes([:customer, :film]).limit(10)
  end

  def show
    @rental = Rental.find(params[:id])
  end
end
