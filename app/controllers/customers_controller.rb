class CustomersController < ApplicationController

  def index
    @customers = Customer.all.limit(10)
  end

  def show
    @customer = Customer.find(params[:id])
  end
end
