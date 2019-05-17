class CLI

  def run
    puts "Welcome the the 10 Best Cocktails and How to Make Them!"
    puts "Here is our cocktail menu:"
    puts ""
    puts "------------------------"
    puts ""
    Scraper.scrape_cocktails #scrapes all of the cocktails
    print_cocktails
    input = ""
    while input != "exit" do
      puts "Which cocktail would you like to see details on?"
      puts "Enter the number of the cocktail or type 'exit'."
      input = gets.strip.downcase

      #now scrape the page of the cocktail selected if it has not already been scraped
      Scraper.scrape_cocktail_details(Cocktail.all[input.to_i-1]) if !Cocktail.all[input.to_i-1].what_you_need
      print_cocktail_details
      #iterate through details
      #prompt user again: would you like to see another cocktail?


    end
  end

  def print_cocktails
    @cocktails = Cocktail.all
    @cocktails.each.with_index(1) do |cocktail, i|
      puts "#{i}. #{cocktail.name}" #" - #{cocktail.description}"
    end
  end

  def print_cocktail_details(cocktail)
    @cocktail_details = Cocktail.all
    #@cocktail_details.each do |detail|
      #puts "" #puts text that user needs to see from cli
    #end
  end
end
