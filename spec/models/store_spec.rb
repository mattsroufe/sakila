require 'spec_helper'

describe Store do
  let!(:store) { FactoryGirl.create(:store) }

  it "is valid with an address_id and manager_staff_id" do
    expect(store).to be_valid
  end

  describe "#films" do
    let!(:film) { FactoryGirl.create(:film) }

    it "returns the stores films" do
      store.films << film
      expect(store.films).to match_array([film])
    end
  end
end
