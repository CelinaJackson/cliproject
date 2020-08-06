require_relative "../lib/Scraper.rb"
require_relative "../lib/Flower.rb"
require 'nokogiri'
require 'open-uri'

class ScrapePage

  def self.scrape_list
    site = "https://www.growerdirect.com/flower-varieties/json"
    page = Nokogiri::HTML(open(site))

    name = page.css("h3.related-title a").text
  
    name.each.with_index(1) do |value, index|
          puts "#{index}: #{value}"
    end 
  end

  def self.scrape_info 
    site = "https://www.growerdirect.com/flower-varieties/json"
    page = Nokogiri::HTML(open(site))

    flower_info = page.css("div.related-summary p").text

    flower_info.each do |i|
      flower_info = i.text
    end 
  end
end  
   