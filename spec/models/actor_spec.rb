require 'spec_helper'

describe Actor do
  let(:actor) { Actor.create(first_name: "MATT", last_name: "SROUFE") }

  it "is valid with a first name" do
    expect(actor).to be_valid
  end

  describe "actor_info" do
    it "returns the actor info for the actor" do
      expect(actor.actor_info).to eq([])
    end
  end

  describe "#full_name" do
    it "returns the actors full name" do
      expect(actor.full_name).to eq("Matt Sroufe")
    end
  end
end
