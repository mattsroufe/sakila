require 'spec_helper'

describe Rental do
  let!(:rental) { FactoryGirl.create(:rental) }

  it "is valid with a rental date, customer_id, inventory_id, and staff_id" do
    expect(rental).to be_valid
  end
end
