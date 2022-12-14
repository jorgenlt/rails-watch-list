require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Movie.destroy_all

100.times do
  Movie.create(title: Faker::Movie.title, overview: Faker::Movie.quote, poster_url: "https://picsum.photos/200/300?random=#{rand(20..70)}", rating: rand(1..9))
  puts 'movie created'
end
puts 'finished'
