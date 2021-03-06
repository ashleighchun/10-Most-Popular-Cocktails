class Scraper

  def self.scrape_cocktails
    html = open("https://www.esquire.com/food-drink/drinks/g215/popular-bar-drinks-0609/")
    doc = Nokogiri::HTML(html)

    doc.css("div .listicle-slide").each do |cocktail|
      new_cocktail = Cocktail.new
      #populate all 5 details of top level scrape
      new_cocktail.name = cocktail.css(".listicle-slide-hed").css(".listicle-slide-hed-text").children[0].text.gsub(/\d+\W/,"").strip
      new_cocktail.description = cocktail.css(".listicle-slide-dek p")[0].text

      new_cocktail.ingredient_amounts = []
      i = 2
      until cocktail.css(".listicle-slide-dek p")[i].text == "Directions"
        new_cocktail.ingredient_amounts << cocktail.css(".listicle-slide-dek p")[i].text
        i += 1
      end

      new_cocktail.directions = cocktail.css(".listicle-slide-dek p")[i+1].text
      new_cocktail.url = cocktail.css(".listicle-slide-dek p")[i+2].css('em').css('a').attr('href').value
    end
  end

  def self.scrape_cocktail_details(cocktail) #takes in the object to add details to
    #do you already know details?/if yes dont call this method
    html = open("#{cocktail.url}")
    doc = Nokogiri::HTML(html)
    nodes = doc.css("div .gallery-list .list-item")
    nodes.each_with_index do |i, index|

      ingredient_name = nodes.css(".product-headline")[index].text
      cocktail.what_you_need[ingredient_name] = {"price" => nodes.css("div .product-slide-details .product-slide-brand")[index].text, "where_to_buy" => nodes.css(".product-slide-details .product-slide-vendor")[index].text}


    end
  end
end
