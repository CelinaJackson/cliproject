class Scraper
   def self.scrape_list
     site = "https://www.growerdirect.com/flower-varieties/json"
     page = Nokogiri::HTML(open(site))
     name = page.css("h3.related-title a").map do |flower| 
     Flower.new(flower.text)
     end
   end 
end
