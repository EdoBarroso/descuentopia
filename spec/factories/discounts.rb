# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :discount do
    discount_club_id 1
    venue_id 1
    conditions "MyString"
    price 1
    discount "MyString"
  end
end
