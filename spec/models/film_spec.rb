require 'spec_helper'

describe Film do
  let(:film) { FactoryGirl.build(:film) }

  it "is valid with a title and language_id" do
    expect(film).to be_valid
  end
end
