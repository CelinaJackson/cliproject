require_relative "../lib/Scraper.rb"
require_relative "../lib/Flower.rb"
require 'nokogiri'
require 'open-uri'

class Scraper

   def scrape
    require 'nokogiri'
    require 'open-uri'
    
    site = "https://www.growerdirect.com/flower-varieties"
    
    page = Nokogiri::HTML(open(site))
    
    flowers = page.css("h3.related-title a").text
   end
   
end