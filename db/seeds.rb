# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "HTTP"
id = 555202
# 1.times do |i|
# response = HTTP.get("https://api.magicthegathering.io/v1/cards/" + (id).to_s).parse
# card = response.body
261.times do |i|
  response = HTTP.get("https://api.magicthegathering.io/v1/cards/" + (id + i).to_s).parse
  card = Card.new(
    name: response["card"]["name"],
    rules_text: response["card"]["text"],
    rarity: response["card"]["rarity"],
    power: response["card"]["power"],
    toughness: response["card"]["toughness"],
    expansion_id: 1,
    cost: response["card"]["manaCost"],
    cmc: response["card"]["cmc"],
    colors: response["card"]["colors"],
    types: response["card"]["type"],
    image_url: response["card"]["imageUrl"]
  )
  card.save
end
p 
p 
user = User.create(
  name: "bob",
  password: "password",
  password_confirmation: "password",
  email: "bob@bob.com"
)
user = User.create(
  name: "test",
  password: "password",
  password_confirmation: "password",
  email: "test@test.com"
)
deck = Deck.new(
  name: "Bob's first deck",
  user_id: "1",
  description: "This is Bob's first deck"
)
deck.save
deck = Deck.new(
  name: "tester",
  user_id: "2",
  description: "This is a testing deck"
)
deck.save
# p card
# card = Card.new(name: response[:card])
# p card
# end