require 'spec_helper'

describe RentalsController do
  let!(:rental) { FactoryGirl.create(:rental) }
  let!(:unreturned_rental) { FactoryGirl.create(:unreturned_rental) }

  describe "#returned" do
    it "renders the returned view" do
      get :returned
      expect(response).to render_template('returned')
    end

    it "assigns all rentals to @rentals" do
      get :returned
      expect(assigns(:rentals)).to match_array(Rental.returned)
    end
  end

  describe "#unreturned" do
    it "renders the unreturned view" do
      get :unreturned
      expect(response).to render_template('unreturned')
    end

    it "assigns all rentals to @rentals" do
      get :unreturned
      expect(assigns(:rentals)).to match_array(Rental.unreturned)
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
