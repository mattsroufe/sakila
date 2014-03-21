require 'spec_helper'

describe RentalsController do
  let!(:rental) { FactoryGirl.create(:rental) }

  describe "#index" do
    it "renders the index view" do
      get :index
      expect(response).to render_template('index')
    end

    it "assigns all rentals to @rentals" do
      get :index
      expect(assigns(:rentals)).to match_array(Rental.all)
    end
  end

  describe "#show" do

    it "renders the show view" do
      get :show, :id => rental
      expect(response).to render_template('show')
    end

    it "assigns the rental as @rental" do
      get :show, :id => rental
      expect(assigns[:rental]).to eq(rental)
    end
  end
end
