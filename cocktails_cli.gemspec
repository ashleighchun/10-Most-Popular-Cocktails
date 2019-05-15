require_relative './lib/best_cocktails/version'

Gem::Specification.new do |s|
  s.name        = 'best_cocktails'
  s.version     = BestCocktails::VERSION
  s.date        = '2019-05-15'
  s.summary     = "The Best Cocktails You Can Make"
  s.description = "Provides details on the 10 best cocktails and how to make them"
  s.authors     = ["Ashleigh Chun"]
  s.email       = 'ashleigh.chun@gmail.com'
  s.files       = ["lib/cocktail_list.rb", "lib/best_cocktails/cli.rb", "lib/best_cocktails/scraper.rb", "lib/best_cocktails/cocktail.rb", "config/environment.rb"]
  s.homepage    = 'tbd'
  s.license     = 'MIT'
  s.executables << 'best_cocktails'

  s.add_development_dependency "bundler", "~> 1.10"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "rspec", ">= 0"
  s.add_development_dependency "nokogiri", ">= 0"
  s.add_development_dependency "pry", ">= 0"
end
