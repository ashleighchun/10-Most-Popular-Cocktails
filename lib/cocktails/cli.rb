class CLI

  def run
    puts "Welcome the the 10 Best Cocktails and How to Make Them!"
    puts "Here is our cocktail menu:"
    puts ""
    puts "------------------------"
    puts ""
    Scraper.get_cocktails #scrapes all of the cocktails
    list_cocktails
    menu
    goodbye
  end

  def list_cocktails
    @cocktails = Cocktail.all
    @cocktails.each.with_index(1) do |cocktail, i|
      puts "#{i}. #{cocktail.name}" #" - #{cocktail.description}"

    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the cocktail you would like more info on or type list to see the cocktails again or type exit"
      input = gets.strip.downcase

      if input.to_i (0..10)
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
