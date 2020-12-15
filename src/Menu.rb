require_relative './Recipe.rb'
require_relative './Convert.rb'
require_relative './Help.rb'


# Menu class that will provide all menu-ing options throughout the application
class Menu
    def initialize
        @answers = {
            1 => ["1", "start"],
            2 => ["2", "convert"],
            3 => ["3", "help"]
        }
        @recipe = Recipe.new
        @convert = Convert.new
        @help = Help.new
    end

    def start() # Start Menu class / main code block
        puts "[1] Start\n[2] Measurement Converter\n[3] How to Use"

        user_input = gets.chomp.downcase
        
        if @answers[1].include?(user_input)
            @recipe.start
        elsif @answers[2].include?(user_input)
            @convert.start
        elsif @answers[3].include?(user_input)
            @help.start
        elsif user_input == "end"
            exit 
        else
            puts "Thats wasn't a valid input, type 1 to start program, type 2 to navigate to the conversion feature and type 3 to see help."
        end
    end

    def ask_for_conversion
        puts ""
        puts "What would you like to do?"
        puts "- [1] Download recipe\n- [2] See Conversion tool\n- [3] Back to main menu "
        user_convert_input = gets.chomp
        if user_convert_input == "1"
            @recipe.download_recipe
        elsif user_convert_input == "2"
            @convert.start
        elsif user_convert_input == "3"
            self.start
        end
    end
end