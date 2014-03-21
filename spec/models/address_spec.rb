require 'spec_helper'

describe Address do
  let!(:address) { FactoryGirl.create(:address) }
  let!(:city) { FactoryGirl.create(:city) }
  let!(:country) { FactoryGirl.create(:country) }

  it "is valid with an address, district, city_id and phone" do
    expect(address).to be_valid
  end

  describe "#city" do
    it "returns the address' city" do
      address.city = city
      expect(address.city).to eq(city)
    end
  end

  describe "#country" do
    it "returns the address' country" do
      address.country = country
      expect(address.country).to eq(country)
    end
  end
end
