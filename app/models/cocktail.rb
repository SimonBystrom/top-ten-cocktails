class Cocktail < ApplicationRecord
  has_many :ingredients, through: :recipes
end
