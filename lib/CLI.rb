require_relative "../lib/Scraper.rb" 
require_relative "../lib/Flowers.rb"
require_relative "../lib/flowerhash.rb"

class CLI 
  
    def run 
        system("clear")
        @user_input = nil
        @cli = CLI.new
        welcome 

        until @user_input == "4"
            main_menu
        end 
    end 

    def welcome 
        puts "Welcome to the flower library!\nWhat would you like to do?\n"
    end

    def main_menu 
        puts "\n"
        puts "1. Learn more about this app"
        puts "2. Get list of flowers"
        puts "3. Search flowers"
        puts "4. Exit"
        puts "\n"

        @user_input = gets.chomp 

        if @user_input == "1"
            puts "You can use this library to find out a\nlittle about each flower on the list!\n\nWhat would you like to do next?"
        elsif @user_input == "2"
            get_flower_list
        elsif @user_input == "3"
            search_flowers
        elsif @user_input == "4"
            exit 
        else 
            puts "Please choose one of the four menu options"
        end
    end

    def get_flower_list
      Scraper.scrape_list.each.with_index(1) do |value, index|
       puts "#{index}. #{value}"
      end
      puts "\n"
      puts "Here is the list!"
      puts"\n"
      puts "What would you like to do next?"
    end
    
    def search_flowers
        puts "What flower would you like to know about?\nMake sure to spell names as they appear on the list, and use\ncamel spacing when necessary(i.e. 'Violet' or 'LilyOfTheValley').\n"
        flowername = gets.chomp
        flower_hash.each do |key, value|
          if key.to_s == flowername
            puts "\n\n#{value}\n\n" 
          end
        end
    end 
 end
