class CLI

  def run
    #puts "Welcome to the 10 Best Cocktail Recipes"
    #puts "These are the best cocktails to make"
    #puts "     "
    #puts "----------"
    #puts "     "
    #Scraper.scrape_cocktails
    #binding.pry
    print_cocktails
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

  def print_cocktails
    #Cocktail.all.each.with_index(1) do |cocktail, index|
      #puts "#{index} #{cocktail.name}"
    #end
    puts "list cocktails"
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the cocktail you would like more info on or type list to see the cocktails again or type exit"
      input = gets.strip.downcase
      case input
      when "1"
        puts "more info on deal 1"
      when "2"
        puts "more info until deal 2"
      when "list"
        print_cocktails
      end
    end
  end

  def goodbye
    puts "Later!"
  end
end
