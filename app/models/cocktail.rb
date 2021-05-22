class Cocktail < ApplicationRecord
  has_many :recipes
  has_many :ingredients, through: :recipes
end
