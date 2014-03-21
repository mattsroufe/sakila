# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :rental do
    rental_date  Date.new(2012,2,12)
    inventory_id 1
    customer_id  1
    staff_id     1
  end
end
