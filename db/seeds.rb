# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list" 
parse = JSON.parse(open(url).read) 
parse["drinks"].each do |ingredient| 
  Ingredient.create(name: ingredient["strIngredient1"]) 
end

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
Cocktail.create(name: "White Russian")
Cocktail.create(name: "Sex on the Beach")
Cocktail.create(name: "Mojito")

Dose.create(description: "4.5 cl")
Dose.create(description: "9 cl")
Dose.create(description: "1.33 oz")
Dose.create(description: "2 cl")