require_relative "../lib/Scraper.rb"
require_relative "../lib/Flowers.rb"
require_relative "../lib/CLI.rb"
require 'nokogiri'
require 'open-uri'

class Scraper
   def self.scrape_list
     site = "https://www.growerdirect.com/flower-varieties/json"
     page = Nokogiri::HTML(open(site))
     name = page.css("h3.related-title a").map do |flower| 
      flower.text
     end
   end 
end