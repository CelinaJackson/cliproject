require_relative "../lib/Scraper.rb" 

class CLI 
    def run 
        system("clear")
        @user_input = nil
        @cli = CLI.new
        welcome 

        until @user_input == "4"
            main_menu
        end 

        puts "Thanks for visiting!"
    end 

    def welcome 
        puts "Welcome to the flower guide! What would you like to do?"
    end

    def main_menu 
        puts "1. Learn more about this app"
        puts "2. Get list of flowers"
        puts "3. Search flowers"
        puts "4. Exit"

        @user_input = gets.chomp 

        if @user_input == "1"
            puts "This flower guide gives basic info on some of the worlds most popular flowers!"
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
      puts Scraper.scrape_list
    end

    def search_flowers
        puts "What flower would you like to know about?"
        input = gets.chomp 
        name = @cli.scrape_info(input)
        name.flower_info
    end
end