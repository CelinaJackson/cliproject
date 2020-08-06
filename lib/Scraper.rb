require_relative "../lib/Scraper.rb"
require_relative "../lib/Flower.rb"
require 'nokogiri'
require 'open-uri'

class ScrapePage

   def self.scrape
       site = "https://www.growerdirect.com/flower-varieties"
       page = Nokogiri::HTML(open(site))

      name = page.css("h3.related-title a").text 
      
      flower_info = page.css("div.related-summary p").text {|info| info = info.text}
   end 
   
   