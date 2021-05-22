# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts '... creating cocktail seeds'
@old_fashioned = Cocktail.new(name: 'old_fashioned', time: 3, instructions: 'Pour whiskey into glass and put in ice')
@old_fashioned.save
@whiskey = Ingredient.new(name: 'Whiskey')
@whiskey.save

@old_fashioned_recipe = Recipe.new(cocktail: @old_fashioned, ingredient: @whiskey, amount: '30 cl')
@old_fashioned_recipe.save
puts "created #{Cocktail.all.count} number of cocktails"
