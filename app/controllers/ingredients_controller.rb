class IngredientsController < ApplicationController
  def show
    raise
    @ingredient = Ingredient.find(params[:id])
  end

  def filter
    raise
    @ingredient = Ingredient.find_by(name: params[:name])
  end

  # private

  # def search_params
  #   params.require(:ingredient).permit(:name)
  # end
end
