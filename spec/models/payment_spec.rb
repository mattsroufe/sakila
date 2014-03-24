require 'spec_helper'

describe Payment do
  let!(:payment) { FactoryGirl.create(:payment) }

  it "is valid customer_id, staff_id, amount and date" do
    expect(payment).to be_valid
  end
end
