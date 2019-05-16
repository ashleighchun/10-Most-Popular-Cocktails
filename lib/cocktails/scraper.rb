class Scraper

  def self.get_cocktails
    html = open("https://www.esquire.com/food-drink/drinks/g215/popular-bar-drinks-0609/")
    doc = Nokogiri::HTML(html)

    doc.css("div .listicle-slide").each do |cocktail|
      new_cocktail = Cocktail.new
      #populate all 5 details of top level scrape
      new_cocktail.name = cocktail.css(".listicle-slide-hed").css(".listicle-slide-hed-text").children[0].text

      new_cocktail.description = cocktail.css(".listicle-body-content").css(".listicle-slide-dek p")[0].text
      binding.pry

      #new_cocktail.ingredient_amounts =
      #new_cocktail.url =

    end


  end

  def self.scrape_cocktail_details(cocktail) #takes in the object to add details to
    #do you already know details?/if yes dont call this method

    #add attributes from second scrape level to cocktail which is an object
  end
end
