class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients

  def delete_empty_ingredients
    self.ingredients = self.ingredients.select do |ingredient|
      !ingredient.name.empty?
    end
  end
end
