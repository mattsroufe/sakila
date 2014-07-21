class CustomersController < ApplicationController

  def index
    @customers = Customer.filter(:last_name, params[:letter]).page(params[:page])
  end

  def show
    @customer = Customer.includes(:rentals => :film).find(params[:id])
  end
end
