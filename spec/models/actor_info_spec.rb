require 'spec_helper'

describe ActorInfo do
  let!(:actor) { Actor.create(first_name: "MATT", last_name: "SROUFE") }

  it "is valid" do
    expect(actor.create_actor_info(first_name: actor.first_name, last_name: actor.last_name)).to be_valid
  end
end
