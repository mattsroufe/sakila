require 'spec_helper'

describe Actor do
  let!(:actor) { FactoryGirl.create(:actor) }

  it "is valid with a first name" do
    expect(actor).to be_valid
  end

  describe ".filter_by" do
    let!(:second_actor) { FactoryGirl.create(:second_actor) }

    it "returns customers whose lastnames begin with passed in letter" do
      expect(Actor.filter_by('last_name', 'C')).to match_array([second_actor])
      expect(Actor.filter_by('last_name', nil)).to match_array([actor, second_actor])
    end
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
