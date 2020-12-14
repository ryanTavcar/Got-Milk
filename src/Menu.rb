require_relative './Recipe.rb'
require_relative './Convert.rb'
require_relative './Help.rb'



class Menu
    def initialize
        @answers = {
            1 => ["1", "start"],
            2 => ["2", "convert"],
            3 => ["3", "help"]
        }
    end

    def start
        puts "[1] Start\n[2] Measurement Converter\n[3] How to Use"

        user_input = gets.chomp.downcase
        
        if @answers[1].include?(user_input)
            recipe = Recipe.new.start
        elsif @answers[2].include?(user_input)
            convert = Convert.new.start
        elsif @answers[3].include?(user_input)
            help = Help.new.start
        elsif user_input == "end"
            exit 
        else
            puts "Thats wasn't a valid input, type 1 to start program, type 2 to navigate to the conversion feature and type 3 to see help."
        end
    end
end