require 'spec_helper'

describe Inventory do
  let!(:inventory) { FactoryGirl.create(:inventory) }

  it "is valid with a film_id and store_id" do
    expect(inventory).to be_valid
  end

  describe "#rental" do
    let!(:rental) { inventory.create_rental!(customer_id: 1, rental_date: Date.new(2012,2,12), staff_id: 1) }

    it "returns the rental for the inventory" do
      expect(inventory.rental).to eq(rental)
    end
  end
end
