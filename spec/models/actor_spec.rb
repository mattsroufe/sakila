require 'spec_helper'

describe Actor do
  let!(:actor) { FactoryGirl.create(:actor) }

  it "is valid with a first name" do
    expect(actor).to be_valid
  end

  describe "#films" do
    let!(:film_1) { actor.films.create!(title: "Big", language_id: 1) }
    let!(:film_2) { actor.films.create!(title: "Gremlins", language_id: 1) }

    it "returns the actors films" do
      expect(actor.films).to match_array([film_1, film_2])
    end
  end

  describe "#full_name" do
    it "returns the actors full name" do
      expect(actor.full_name).to eq("Matt Sroufe")
    end
  end
end
