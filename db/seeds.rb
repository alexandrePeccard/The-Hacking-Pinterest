# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

100.times do |index|
  users = User.create!(first_name: Faker::Company.name, last_name: Faker::Company.name)
  pins = Pin.create(url: Faker::Internet.url, user_id: index + 1)
  comments = Comment.create(body: Faker::Lorem.sentence, user_id: index + 1)
end