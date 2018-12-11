# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#   ※Not Recommended to use Factory_Bot here ※
#   https://robots.thoughtbot.com/factory_girl-for-seed-data
#
require 'factory_bot'
FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    sex { :man }
  end

  factory :snap do
    sequence(:user_id) { |n| n }
  end
end

FactoryBot.create_list(:user, 10)
FactoryBot.create_list(:snap, 10)
