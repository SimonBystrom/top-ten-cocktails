# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts '... creating cocktail seeds'


# TO DO CREATE AND SEED MARTINI!!

# Ingredients
@whiskey = Ingredient.new(name: 'Whiskey')
@sugar = Ingredient.new(name: 'Sugar')
@water = Ingredient.new(name: 'Water')
@bourbon = Ingredient.new(name: 'Bourbon')
@angostura_bitters = Ingredient.new(name: 'Angostura Bitters')
@orange_peel = Ingredient.new(name: 'Orange peel')

@whiskey.save
@sugar.save
@water.save
@bourbon.save
@angostura_bitters.save
@orange_peel.save


# Cocktails
@old_fashioned = Cocktail.new(name: 'Old Fashioned', time: 3, instructions: '
1. Add the sugar and bitters to a rocks glass, then add water, and stir until sugar is nearly dissolved.
\n
2. Fill the glass with large ice cubes, add the bourbon, and gently stir to combine.
\n
3. Express the oil of an orange peel over the glass, then drop in.',
img_path: 'old-fashioned.png')
@old_fashioned.save

# Recipies
# -> Old Fashioned
@old_fashioned_whiskey = Recipe.new(cocktail: @old_fashioned, ingredient: @whiskey, amount: '30 cl')
@old_fashioned_whiskey.save

@old_fashioned_sugar = Recipe.new(cocktail: @old_fashioned, ingredient: @sugar, amount: '1/2 teaspoon')
@old_fashioned_sugar.save

@old_fashioned_angostura_bitters = Recipe.new(cocktail: @old_fashioned, ingredient: @angostura_bitters, amount: '3 dashes')
@old_fashioned_angostura_bitters.save

@old_fashioned_water = Recipe.new(cocktail: @old_fashioned, ingredient: @water, amount: '1 teaspoon')
@old_fashioned_water.save

@old_fashioned_orange_peel = Recipe.new(cocktail: @old_fashioned, ingredient: @orange_peel, amount: 'Garnish')
@old_fashioned_orange_peel.save


puts "created #{Cocktail.all.count} number of cocktails"
