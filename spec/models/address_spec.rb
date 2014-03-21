require 'spec_helper'

describe Address do
  let!(:address) { FactoryGirl.create(:address) }

  it "is valid with an address, district, city_id and phone" do
    expect(address).to be_valid
  end
end
