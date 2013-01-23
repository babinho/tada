require 'factory_girl'

FactoryGirl.define do
  factory :user do
    email 'mail@example.com'
    password 'secret'
  end
end
