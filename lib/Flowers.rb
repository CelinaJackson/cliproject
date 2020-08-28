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
  
  def self.sort_by_name
    Flower.all.sort_by {|flower| flower.name}
  end 
    
end