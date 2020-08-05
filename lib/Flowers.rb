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

    def flower_info 
        puts @name 
        puts "\n"
        puts "About this Flower:"
        puts @flower_info
    end 
end