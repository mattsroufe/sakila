require 'spec_helper'

describe Rental do
  let!(:film) { FactoryGirl.create(:film) }
  let!(:inventory) { Inventory.create(film: film, store_id: 1) }
  let!(:rental) { inventory.create_rental!(customer_id: 1, rental_date: Date.new(2012,2,12), staff_id: 1) }

  it "is valid with a rental date, customer_id, inventory_id, and staff_id" do
    expect(rental).to be_valid
  end

  describe "#customer" do
    let!(:customer) { FactoryGirl.create(:customer) }

    it "returns the rental's customer" do
      rental.customer = customer
      expect(rental.customer).to eq(customer)
    end
  end

  describe "#film" do
    it "returns the rental film" do
      expect(rental.film).to eq(film)
    end
  end
end
