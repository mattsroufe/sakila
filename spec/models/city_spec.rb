require 'spec_helper'

describe City do
  let!(:city) { FactoryGirl.create(:city) }

  it "is valid with a city and country_id" do
    expect(city).to be_valid
  end
end
