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
end
