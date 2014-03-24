require 'spec_helper'

describe Payment do
  let!(:payment) { FactoryGirl.create(:payment) }
  let!(:customer) { FactoryGirl.create(:customer) }

  it "is valid customer_id, staff_id, amount and date" do
    expect(payment).to be_valid
  end

  describe "#customer" do
    it "returns the payment's customer" do
      expect(payment.customer).to eq(customer)
    end
  end
end
