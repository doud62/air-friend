# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

#Faker::Name.first_name
#Faker::Name.last_name
#Faker::Internet.email

puts "Creating users"

5.times do
  age = (18..55).to_a.sample
  gender = ["male", "female", "Hélicoptère"].sample
  user = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "123445", age: age, description: Faker::Lorem.paragraph(sentence_count: 2))
  user.save!
  3.times do
    age = (18..55).to_a.sample
    gender = ["male", "female", "Hélicoptère"].sample
    price = (10..90).to_a.sample
    Friend.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: age, gender: gender, user: user, address: Faker::Address.city, price: price, description: Faker::Lorem.paragraph(sentence_count: 2))

  end
end

user1 = User.find(1)
user1.description = "J'aime le sirop d'érable, les échecs et le tricot."

user1.save

user2 = User.find(2)
user2.description = "J'apprécie les moments d'évasion nature et les infusions verveine menthe."

user2.save