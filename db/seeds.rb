# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# Créer 10 villes aléatoires
10.times do
  City.create(city_name: Faker::Address.city)
end

# Créer 10 Dogsitters aléatoires, en assignant une ville aléatoire à chacun
10.times do
  dogsitter = Dogsitter.create(name: Faker::Name.name, email: Faker::Internet.email, city_id: rand(1..10))
end

# Créer 10 Dogs aléatoires, en assignant une ville aléatoire à chacun
10.times do
  dog = Dog.create(name: Faker::Creature::Dog.name, breed: Faker::Creature::Dog.breed, city_id: rand(1..10))
end