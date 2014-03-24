# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :payment do
    customer_id  1
    staff_id     1
    amount       9.99
    payment_date Date.new(2012,2,12)
  end
end
