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
  age = ["18".."55"].sample
  gender = ["male", "female", "Hélicoptère"].sample
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "123445", age: age, description: Faker::Lorem.paragraph(sentence_count: 2))
  3.times do 
    age = ["18".."55"].sample
    gender = ["male", "female", "Hélicoptère"].sample 
    Friend.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: age, gender: gender)
  end
end
