FactoryGirl.define do

  factory :meetup do
    user = rand(1..3)
    location = rand(1..8)
    
    title "Crab Hunting"
    description "Tasty shells."
    meetup_date "06/24/2016"
    user_id user
    location_id location
  end

end
