class RentalsController < ApplicationController

  def returned
    @rentals = Rental.returned.includes([:customer, :film]).page(params[:page])
  end

  def unreturned
    @rentals = Rental.unreturned.includes([:customer, :film]).page(params[:page])
  end

  def show
    @rental = Rental.find(params[:id])
  end
end
