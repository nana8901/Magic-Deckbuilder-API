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
response = HTTP.get("https://api.magicthegathering.io/v1/cards/" + (id).to_s).parse
# card = response.body
card = Card.new(
  name: response["card"]["name"],
  
)
p response["card"]["name"]
p 
# p card
# card = Card.new(name: response[:card])
# p card
# end