require 'spec_helper'

describe Category do
  let(:category) { FactoryGirl.create(:category) }

  it "is valid with a name" do
    expect(category).to be_valid
  end

  describe "#films" do
    let!(:film) { FactoryGirl.create(:film) }

    it "returns the films within the category" do
      category.films << film
      expect(category.films).to match_array([film])
    end
  end
end
