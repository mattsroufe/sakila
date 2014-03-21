require 'spec_helper'

describe Customer do
  let!(:customer) { FactoryGirl.create(:customer) }

  it "is valid store_id, first_name, last_name and address_id" do
    expect(customer).to be_valid
  end
end
