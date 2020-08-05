class CLI 
    def run 
        system("clear")
        @user_input = nil 
        welcome 

        until @user_input == "4"
            main_menu
        end 

        puts "Thanks for visiting!"
    end 

    def welcome 
        puts "Welcome to the flower guide!"
    end

    def main_menu 
        puts "Please choose one of the four menu options"
        puts "1. Learn more about this app"
        puts "2. Get list of flowers"
        puts "3. Search flowers"
        puts "4. Exit"

        @user_input = gets.chomp 

        if @user_input == "1"
            puts "This app shares basic info on some of the worlds most popular flowers!"
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
        flowers = @scrape.getlist
        flowers.each do |flower|
            puts flower
        end
    end

    def search_flowers
        puts "What flower would you like to know about?"
        input = gets.chomp 
        flower = @scrape.search_flowers_by_name
        flower.flower_info 
    end
end