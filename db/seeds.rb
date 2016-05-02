require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Character.delete_all

50.times do
  Character.create(name: Faker::Internet.user_name, gender: 'male', creator: Faker::Name.name, win: Faker::Number.between(1, 20), lose: Faker::Number.between(1, 20))
end
50.times do
  Character.create(name: Faker::Internet.user_name, gender: 'female', creator: Faker::Name.name, win: Faker::Number.between(1, 20), lose: Faker::Number.between(1, 20))
end
