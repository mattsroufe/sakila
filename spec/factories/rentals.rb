FactoryGirl.define do
  factory :rental do
    id           1
    rental_date  Date.new(2012,2,12)
    inventory_id 1
    customer_id  1
    staff_id     1
  end

  factory :unreturned_rental, :class => :rental do
    id           2
    rental_date  Date.new(2012,2,12)
    return_date  Date.new(2012,2,13)
    inventory_id 2
    customer_id  1
    staff_id     1
  end
end
