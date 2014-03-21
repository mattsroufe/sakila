require 'spec_helper'

describe Customer do
  let!(:customer) { FactoryGirl.create(:customer) }

  it "is valid store_id, first_name, last_name and address_id" do
    expect(customer).to be_valid
  end

  describe "#full_name" do
    it "returns the customer's full name" do
      expect(customer.full_name).to eq("Matt Sroufe")
    end
  end

  describe "#rentals" do
    let!(:rental) { FactoryGirl.create(:rental) }

    it "returns the cusomters rentals" do
      customer.rentals << rental
      expect(customer.rentals).to match_array([rental])
    end
  end
end
