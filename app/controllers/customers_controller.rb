class CustomersController < ApplicationController

  def index
    @customers = Customer.limit(10)
  end

  def show
    @customer = Customer.includes(:rentals => :film).find(params[:id])
  end
end
