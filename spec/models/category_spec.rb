require 'spec_helper'

describe Category do
  let(:category) { FactoryGirl.create(:category) }

  it "is valid" do
    expect(category).to be_valid
  end
end
