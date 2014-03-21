require 'spec_helper'

describe Store do
  let!(:store) { FactoryGirl.create(:store) }
  let!(:film) { FactoryGirl.create(:film) }
  let!(:inventory) { store.inventories.create!(film: film) }
  let!(:rental) { inventory.create_rental!(customer_id: 1, rental_date: Date.new(2012,2,12), staff_id: 1) }

  it "is valid with an address_id and manager_staff_id" do
    expect(store).to be_valid
  end

  describe "#films_in_inventory" do
    it "returns the stores films" do
      expect(store.films_in_inventory).to match_array([film])
    end
  end

  describe "#rentals" do
    it "returns the store's rentals" do
      expect(store.rentals).to match_array([rental])
    end
  end
end
