class Cocktail

  attr_accessor :name, :url, :description, :directions, :ingredient_amounts, :what_you_need

  @@all = []

  def initialize
    @@all << self
  end


  def self.all
    @@all
  end


end
