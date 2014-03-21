require 'spec_helper'

describe CustomersController do

  describe "#index" do
    it "renders the index view" do
      get :index
      expect(response).to render_template('index')
    end

    it "assigns all customers to @customers" do
      get :index
      expect(assigns(:customers)).to match_array(Customer.all)
    end
  end

  describe "#show" do
    let(:customer) { FactoryGirl.create(:customer) }

    it "renders the show view" do
      get :show, :id => customer
      expect(response).to render_template('show')
    end

    it "assigns the customer as @customer" do
      get :show, :id => customer
      expect(assigns[:customer]).to eq(customer)
    end
  end
end
