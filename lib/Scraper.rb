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

def self.scrape_info
  site = "https://www.growerdirect.com/flower-varieties/json"
  page = Nokogiri::HTML(open(site))
  name = page.css("h3.related-title a").map do |flower| 
    flower = flower.text
  end
  
  flowerinfo = page.css("div.related-summary p").map do |info| 
    info.text
  end

  flowerinfo.each.with_index(1) do |value, index|
    puts "#{index}: #{value}"
  end
  hash = {
"Agapanthus" => "1", 
"Alstroemeria" => "2", 
"Asters" => "3", 
"Bells of Ireland" => "4", 
"Bird of Paradise" => "5", 
"Bloomies & Santinis" => "6", 
"Button Pompon" => "7", 
"Calla Lilies" => "8", 
"Campanulas" => "9", 
"Carnations / Mini Carnations" => "10", 
"Chrysanthemum" => "11", 
"Cushion Pompon" => "12", 
"Daisy Pompon" => "13", 
"Daffodils" => "14", 
"Delphinium" => "15", 
"Disbud" => "16", 
"Freesia" => "17", 
"Fuji" => "18", 
"Gladioli" => "19", 
"Godetia" => "20", 
"Gerbera" => "21", 
"Greens" => "22", 
"Hydrangea" => "23", 
"Hypericum" => "24", 
"Gypsophila" => "25", 
"Iris" => "26", 
"Larkspur" => "27", 
"Liatris" => "28", 
"Limonium" => "29", 
"Lisianthus" => "30", 
"Lilies" => "31", 
"Marigold" => "32", 
"Mum" => "33", 
"Lily of the Valley" => "34", 
"Novelty Pompon" => "35", 
"Orchids" => "36", 
"Ornithogalum" => "37", 
"Peony" => "38", 
"Plumusus" => "39", 
"Pompons" => "40", 
"Poinsettias" => "41", 
"Queen Anne's Lace" => "42", 
"Ranunculus" => "43", 
"Rose" => "44", 
"Snapdragons" => "45", 
"Spider Pompon" => "46", 
"Statice" => "47", 
"Stock" => "48", 
"Sunflowers" => "49", 
"Tulips" => "50", 
"Sweet Pea" => "51", 
"Violet" => "52", 
"Zinnia" => "53"
}
end
end