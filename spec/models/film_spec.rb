require 'spec_helper'

describe Film do
  let!(:film) { FactoryGirl.create(:film) }

  it "is valid with a title and language_id" do
    expect(film).to be_valid
  end

  describe "#actors" do
    let!(:actor) { FactoryGirl.create(:actor) }

    it "returns the film's actors" do
      film.actors << actor
      expect(film.actors).to match_array([actor])
    end
  end

  describe "#category" do
    let!(:category) { FactoryGirl.create(:category) }

    it "returns the film's categories" do
      film.category = category
      expect(film.category).to eq(category)
    end
  end
end
