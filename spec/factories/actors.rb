FactoryGirl.define do
  factory :actor do
    id         1 
    first_name "MATT"
    last_name  "SROUFE"
  end

  factory :second_actor, :class => :actor do
    id         2
    first_name "JIM"
    last_name  "CAREY"
  end
end
