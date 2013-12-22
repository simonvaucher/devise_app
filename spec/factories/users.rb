require 'faker'

faker_password = Faker::Lorem.characters(8)

FactoryGirl.define do
  factory :user do |f|
    f.name { Faker::Name.first_name }
    f.email { Faker::Internet.email }
    f.password faker_password
    f.password_confirmation faker_password
    # required if the Devise Confirmable module is used
    f.confirmed_at Time.now
  end
end
