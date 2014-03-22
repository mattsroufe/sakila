FactoryGirl.define do
  factory :customer do
    id         1
    store_id   1
    first_name "Matt"
    last_name  "Sroufe"
    address_id 1
  end

  factory :bob_knight, :class => :customer do
    id         2
    store_id   1
    first_name "Bob"
    last_name  "Knight"
    address_id 1
  end
end
