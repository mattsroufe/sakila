require 'spec_helper'

describe Store do
  let!(:store) { FactoryGirl.create(:store) }

  it "is valid with an address_id and manager_staff_id" do
    expect(store).to be_valid
  end
end
