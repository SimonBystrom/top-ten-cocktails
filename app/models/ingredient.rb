class Ingredient < ApplicationRecord
  has_many :cocktails, through: :recipes
end
