require_relative "../lib/Scraper.rb"
require_relative "../lib/CLI.rb"

class Flower 

  attr_reader :name 
  @@all = [ ]

  def initialize(name)
    @name = name
    @@all << self 
  end 

  def self.all 
    @@all 
  end

  def self.find_by_name 
    @@all.find {|flower| flower.name.downcase == name.downcase}
  end 
    
  def save 
    @@all << self 
  end
    
end