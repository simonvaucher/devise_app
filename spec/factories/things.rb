require 'faker'

FactoryGirl.define do
  factory :thing do |f|
    f.title { Faker::Lorem.sentence }
    f.description { Faker::Lorem.paragraph }
    f.user nil
  end
end
