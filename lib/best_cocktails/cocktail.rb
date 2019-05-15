class BestCocktails::Cocktail

  attr_accessor :name, :url, :description, :ingredients, :recipe

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end
end
