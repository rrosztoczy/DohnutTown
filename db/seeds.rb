# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ryan.new(name: 'The OG', coolness: 10)
Ryan.new(name: 'Trickster', coolness: 3)
Dohnut.new(flavor: 'Bannana', sprinkles: true, size: "Ginormous")
Dohnut.new(flavor: 'Chocoloate', sprinkles: false, size: "Medium")
Dohnut.new(flavor: 'Cinnamon', sprinkles: false, size: "Normal")
Ingredient.new(type: 'Bannana Bits')
Ingredient.new(type: 'Walnuts')
Ingredient.new(type: 'Chocolate')
Ingredient.new(type: 'Cinnamon')
Ingredient.new(type: 'Vanilla')
Ingredient.new(type: 'Flour')