# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :parameter do
    content "MyText"
    discount_club_id 1
  end
end
