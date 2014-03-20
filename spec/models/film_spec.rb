require 'spec_helper'

describe Film do
  it "is valid with a title and language_id" do
    expect(Film.create!(title: "The Big Lebowsi", language_id: 1)).to be_valid
  end
end
