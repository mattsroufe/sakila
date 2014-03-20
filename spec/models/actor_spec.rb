require 'spec_helper'

describe Actor do
  let!(:actor) { FactoryGirl.create(:actor) }
  let!(:actor_info) { actor.create_actor_info(first_name: actor.first_name, last_name: actor.last_name) }

  it "is valid with a first name" do
    expect(actor).to be_valid
  end

  describe "actor_info" do
    it "returns the actor info for the actor" do
      expect(actor.actor_info).to eq(actor_info)
    end
  end

  describe "#full_name" do
    it "returns the actors full name" do
      expect(actor.full_name).to eq("Matt Sroufe")
    end
  end
end
