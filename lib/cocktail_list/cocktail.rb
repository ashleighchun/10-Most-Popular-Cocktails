class Cocktail

  attr_accessor :name, :url, :description

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end
end 
