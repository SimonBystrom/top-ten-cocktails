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
@whiskey = Ingredient.new(name: 'Whiskey', img_path: 'whiskey.png')
@vodka = Ingredient.new(name: 'Vodka', img_path: 'vodka.png')
@dry_vermouth = Ingredient.new(name: 'Dry Vermouth', img_path: 'dry-vermouth.png')
@gin = Ingredient.new(name: 'Gin', img_path: 'gin.png')
@tonic_water = Ingredient.new(name: 'Tonic Water')
@sugar = Ingredient.new(name: 'Sugar')
@water = Ingredient.new(name: 'Water')
@ice = Ingredient.new(name: 'Ice')
@bourbon = Ingredient.new(name: 'Bourbon',  img_path: 'whiskey.png')
@angostura_bitters = Ingredient.new(name: 'Angostura Bitters')
@orange_peel = Ingredient.new(name: 'Orange peel')
@lemon_peel = Ingredient.new(name: 'Lemon peel')
@lime_wedge = Ingredient.new(name: 'Lime wedge')

@whiskey.save
@vodka.save
@dry_vermouth.save
@gin.save
@tonic_water.save
@ice.save
@lemon_peel.save
@lime_wedge.save
@sugar.save
@water.save
@bourbon.save
@angostura_bitters.save
@orange_peel.save


# Cocktails
  @old_fashioned = Cocktail.new(name: 'Old Fashioned', time: 3, instructions: '
  1. Add the sugar and bitters to a rocks glass, then add water, and stir until sugar is nearly dissolved.

  2. Fill the glass with large ice cubes, add the bourbon, and gently stir to combine.

  3. Express the oil of an orange peel over the glass, then drop in.',
  img_path: 'old-fashioned.png')
  @old_fashioned.save

  @martini = Cocktail.new(name: 'Martini', time: 6, instructions: "
    Stirred
    1. Chill the glass: Before you build your Martini, put your Martini glass in the freezer to chill.

    2. Build the drink: Place the gin or vodka and dry vermouth in a mixing glass.

    3. Stir and strain: Add cubed ice and stir for 30 seconds until the Martini is chilled. Strain the drink into your chilled Martini glass.

    4. Garnish the drink: Pare a lemon peel, and express (pinch) the back of the lemon peel over the martini. Rub the lemon peel around the rim of the glass and drop it into the glass. Alternatively, garnish with speared olives.


  Shaken
  1. Chill the glass: Before you build your Martini, put your Martini glass in the freezer to chill.

  2. Build the drink: Place the gin or vodka and dry vermouth in a cocktail shaker.

  3. Shake the drink: Add cubed ice and shake vigorously for 10 seconds.

  4. Strain the drink: If you prefer ice shards floating at the top of your Martini, then simply strain the drink into your chilled Martini glass. If you don't want the ice shards, then strain the drink through a fine-mesh strainer to catch the ice shards.

  5. Garnish the drink: Pare a lemon peel, and express (pinch) the back of the lemon peel over the Martini. Rub the lemon peel around the rim of the glass and drop it into the glass. Alternatively, garnish with speared olives.",
  img_path: 'martini.png')
  @martini.save


  @gin_and_tonic = Cocktail.new(name: 'Gin and Tonic', time: 2, instructions: "
    1. Gather the ingredients.

    2. In a highball glass filled with ice cubes, pour the gin, then top with tonic.

    3. Gently stir to combine, but not so much so that you lose carbonation.

    4. Garnish with a lime wedge. Serve and enjoy.",
    img_path: 'gin-and-tonic.png')
  @gin_and_tonic.save

  # Recipies
  # -> Old Fashioned
  @old_fashioned_whiskey = Recipe.new(cocktail: @old_fashioned, ingredient: @whiskey, amount: '30 ml')
  @old_fashioned_whiskey.save

  @old_fashioned_angostura_bitters = Recipe.new(cocktail: @old_fashioned, ingredient: @angostura_bitters, amount: '3 dashes')
  @old_fashioned_angostura_bitters.save

  @old_fashioned_sugar = Recipe.new(cocktail: @old_fashioned, ingredient: @sugar, amount: '1/2 teaspoon')
  @old_fashioned_sugar.save

  @old_fashioned_water = Recipe.new(cocktail: @old_fashioned, ingredient: @water, amount: '1 teaspoon')
  @old_fashioned_water.save

  @old_fashioned_orange_peel = Recipe.new(cocktail: @old_fashioned, ingredient: @orange_peel, amount: 'Garnish')
  @old_fashioned_orange_peel.save


  # -> Martini
  @martini_vodka = Recipe.new(cocktail: @martini, ingredient: @vodka, amount: '75 ml')
  @martini_dry_vermouth = Recipe.new(cocktail: @martini, ingredient: @dry_vermouth, amount: '15 ml')
  @martini_ice = Recipe.new(cocktail: @martini, ingredient: @ice, amount: 'Lots')
  @martini_lemon_peel = Recipe.new(cocktail: @martini, ingredient: @lemon_peel , amount: 'Garnish')
  @martini_vodka.save
  @martini_dry_vermouth.save
  @martini_ice.save
  @martini_lemon_peel.save

  # -> Gin and Tonic
  @gin_and_tonic_gin = Recipe.new(cocktail: @gin_and_tonic, ingredient: @gin , amount: '60 ml')
  @gin_and_tonic_tonic_water = Recipe.new(cocktail: @gin_and_tonic, ingredient: @tonic_water , amount: '120 ml')
  @gin_and_tonic_lime_wedge = Recipe.new(cocktail: @gin_and_tonic, ingredient: @lime_wedge , amount: 'Garnish')

  @gin_and_tonic_gin.save
  @gin_and_tonic_tonic_water.save
  @gin_and_tonic_lime_wedge.save

puts "created #{Cocktail.all.count} number of cocktails"
