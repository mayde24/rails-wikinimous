# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
10.times do
  body = ""
  rand(4..9).times do
    body << " " + Faker::Lorem.paragraph
  end
  articles = Article.new
  articles.title = Faker::Book.title
  articles.content = body
  articles.save
end
