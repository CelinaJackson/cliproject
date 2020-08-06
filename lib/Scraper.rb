require_relative "../lib/Scraper.rb"
require_relative "../lib/Flower.rb"
require 'nokogiri'
require 'open-uri'

class ScrapePage

  def scrape_list
    site = "https://www.growerdirect.com/flower-varieties/json"
    page = Nokogiri::HTML(open(site))

    name = page.css("h3.related-title a").map do |flower| 
    flower.text
    end
  end 


  def self.scrape_info 
    site = "https://www.growerdirect.com/flower-varieties/json"
    page = Nokogiri::HTML(open(site))
    
    flower_info = page.css("div.related-summary p").map do |info| 
    info.text
    end
  end

end  
   