require 'spec_helper'

describe ActorInfo do
  let(:actor) { FactoryGirl.build(:actor) }

  it "is valid with an actor_id, first_name and last_name" do
    expect(actor.create_actor_info(first_name: actor.first_name, last_name: actor.last_name)).to be_valid
  end
end
