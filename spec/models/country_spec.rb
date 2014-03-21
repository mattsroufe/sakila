require 'spec_helper'

describe Country do
  let!(:country) { FactoryGirl.create(:country) }

  it "is valid with a county" do
    expect(country).to be_valid
  end
end
