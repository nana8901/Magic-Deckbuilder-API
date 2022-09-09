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
    types: response["card"]["type"]
  )
  card.save
end
p 
p 
user = User.new(
  name: "bob",
  password_digest: "password",
  email: "bob@bob.com"
)
user.save
user = User.new(
  name: "test",
  password_digest: "password",
  email: "test@test.com"
)
user.save
deck = Deck.new(
  name: nil,
  user_id: nil,
  description: nil
)
# p card
# card = Card.new(name: response[:card])
# p card
# end