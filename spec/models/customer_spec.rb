require 'spec_helper'

describe Customer do
  let!(:customer) { FactoryGirl.create(:customer) }

  it "is valid store_id, first_name, last_name and address_id" do
    expect(customer).to be_valid
  end

  describe ".filter_by_last_name" do
    let!(:bob_knight) { FactoryGirl.create(:bob_knight) }

    it "returns customers whose lastnames begin with passed in letter" do
      expect(Customer.filter_by_last_name('K')).to match_array([bob_knight])
      expect(Customer.filter_by_last_name(nil)).to match_array([customer, bob_knight])
    end
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

  describe "#address" do
    let!(:address) { FactoryGirl.create(:address) }

    it "returns the customer's address" do
      customer.address = address
      expect(customer.address).to eq(address)
    end
  end
end
