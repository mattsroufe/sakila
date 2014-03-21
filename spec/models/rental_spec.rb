require 'spec_helper'

describe Rental do
  let!(:rental) { FactoryGirl.create(:rental) }

  it "is valid" do
    expect(rental).to be_valid
  end
end
