require 'spec_helper'

describe Actor do
  it "is valid with a first name" do
    expect(Actor.create(first_name: "Matt", last_name: "Sroufe")).to be_valid
  end
end
