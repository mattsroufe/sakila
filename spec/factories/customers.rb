# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :customer do
    id         1
    store_id   1
    first_name "Matt"
    last_name  "Sroufe"
    address_id 1
  end
end
