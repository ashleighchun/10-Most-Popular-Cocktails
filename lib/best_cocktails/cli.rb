class BestCocktails::CLI

  def run
    #puts "Welcome to the 10 Best Cocktail Recipes"
    #puts "These are the best cocktails to make"
    #puts "     "
    #puts "----------"
    #puts "     "
    #Scraper.scrape_cocktails
    #binding.pry
    list_cocktails
    #input = ""
    #while input != "exit" do
      #puts "Which cocktail recipe would you like to make?"
      #puts "Enter the number of the cocktail or type 'exit' to exit"
      #input = gets.strip
      #Scraper.scrape_cocktail(Cocktail.all[input-1]) if !Cocktail.all[input-1].directory
    #end
    menu
    goodbye
  end

  def list_cocktails
    #Cocktail.all.each.with_index(1) do |cocktail, index|
      #puts "#{index} #{cocktail.name}"
    #end
    puts "list cocktails"
    @cocktails = Cocktail.all
    @cocktails.each.with_index(1) do |cocktail, i|
      puts "#{i}. #{cocktail} - #{cocktail.name} - #{cocktail.description}"

    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the cocktail you would like more info on or type list to see the cocktails again or type exit"
      input = gets.strip.downcase

      if input.to_i > 0
        puts@cocktails[input.to_i-1]
      elsif input == "list"
        list_cocktails
      else
        puts "Not sure what you want, type list or exit."
      end
    end
  end

  def goodbye
    puts "Later!"
  end
end
