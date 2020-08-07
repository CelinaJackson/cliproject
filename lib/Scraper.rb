require_relative "../lib/Scraper.rb"
require_relative "../lib/Flower.rb"
require 'nokogiri'
require 'open-uri'


 def scrape_list
site = "https://www.growerdirect.com/flower-varieties/json"
page = Nokogiri::HTML(open(site))
  name = page.css("h3.related-title a").map do |flower| 
    flower.text
  end

  name.each.with_index(1) do |value, index|
    puts "#{index}: #{value}"
  end
end 

def scrape_info
site = "https://www.growerdirect.com/flower-varieties/json"
page = Nokogiri::HTML(open(site))
 flower_info = page.css("div.related-summary p").map do |info| 
    info.text
 end

 flower_info.each.with_index(1) do |value, index|
    puts "#{index}: #{value}"
 end
end
