class BestCocktails::Scraper

  def get_cocktails
    binding.pry
    html = open("https://www.esquire.com/food-drink/drinks/g215/popular-bar-drinks-0609/")
    doc = Nokogiri::HTML(html)

    doc.css("div .listicle-slide-hed .listicle-slide-hed-text")[0].css.each do |cocktail|
      cocktail = Cocktail.new
      cocktail.name = cocktail.css(".???").text.strip
      cocktail.url = cocktail.css("a")attr('href').value
    end
  end

  def self.scrape_cocktails
    #add attributes to cocktail which is an object
  end
end
