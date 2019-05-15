class BestCocktails::Cocktail

  attr_accessor :name, :url, :description, :directions, :what_you_need, :prep_time

  @@all = []

  def self.scrape_deals
    cocktails = []

    cocktails
  end
  #def self.new_from_index_page()
    #self.new(
      #r.css("").text,
    #)
  #def initialize(name = nil, url = nil, description = nil)
    #@name = name
  #  @url = url
    #@description = description
    #@@all << self
  #end

  #def self.all
  #  @@all
  #end

  #def self.find(id)
    #self.all[id-1]
  #end

  #def directions
    #@directions ||= doc.css("").text
  #end

  #def what_you_need
    #@what_you_need ||= doc.css("").text
  #end

  #def prep_time
    #@prep_time ||=doc.css("").text
  #end

  #def doc
    #@doc ||= Nokogiri::HTML(open(self.url))
  #end
end
