require 'spec_helper'

describe Inventory do
  let!(:inventory) { FactoryGirl.create(:inventory) }

  it "is valid with a film_id and store_id" do
    expect(inventory).to be_valid
  end
end
