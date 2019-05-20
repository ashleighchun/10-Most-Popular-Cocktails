class CLI

  def run
    puts ""
    puts "Welcome the the 10 Best Cocktails and How to Make Them!"
    puts "Here is our cocktail menu:"
    puts ""
    puts "------------------------".colorize(:blue)
    puts ""
    Scraper.scrape_cocktails #scrapes all of the cocktails
    print_cocktails
    puts ""
    puts "------------------------".colorize(:blue)
    puts ""
    input = nil
    while input != "exit" do
      puts "Which cocktail would you like to see details on?".colorize(:blue)
      puts "Enter the number of the cocktail, type 'list' to see the list again or type 'exit'.".colorize(:blue)
      input = gets.strip.downcase
      case input
      when "list"
        puts ""
        puts "------------------------".colorize(:blue)
        puts ""
        print_cocktails
        puts ""
        puts "------------------------".colorize(:blue)
        puts ""
      when "exit"
        puts ""
        puts "See you next time!".colorize(:red)
        puts ""
        break
      when "1".."10"
        #binding.pry
        #now scrape the page of the cocktail selected if it has not already been scraped
        Scraper.scrape_cocktail_details(Cocktail.all[input.to_i-1]) if Cocktail.all[input.to_i-1].what_you_need == {}
        print_cocktail_details(Cocktail.all[input.to_i-1])
        #iterate through details
        puts "Would you like to see another cocktail?".colorize(:blue)

      else
        puts "Not sure what you want, type 'list' or 'exit'.".colorize(:red)
      end
    end
  end

  def print_cocktails
    @cocktails = Cocktail.all
    @cocktails.each.with_index(1) do |cocktail, i|
      puts "#{i}. #{cocktail.name}".colorize(:blue) #" - #{cocktail.description}"
    end
  end

  def print_cocktail_details(cocktail)
    puts ""
    puts ""
    puts "------------------------".colorize(:green)
    puts "#{cocktail.name}".colorize(:green)
    puts "------------------------".colorize(:green)
    puts ""
    puts ""
    puts "Description:".colorize(:blue)
    puts "#{cocktail.description}"
    puts ""
    puts "What you'll need:".colorize(:blue)
    if cocktail.what_you_need != {}
      cocktail.what_you_need.each do |item|
        #item is an array with 2 elements, index 0 is the name, index 1 is a hash
        puts item[0].colorize(:red)
        puts "   Price: #{item[1]["price"]}"
        puts "   Can be purchased at #{item[1]["where_to_buy"]}"
      end
    else
      puts "Unfortunately not listed :(".colorize(:red)
    end
    puts ""
    puts "Ingredient amounts:".colorize(:blue)
    cocktail.ingredient_amounts.each do |item|
      puts item
    end
    puts ""
    puts "Directions:".colorize(:blue)
    puts "#{cocktail.directions}"
    puts "------------------------".colorize(:green)
    puts ""
  end
end
