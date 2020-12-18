require_relative './Recipe.rb'
require_relative './Convert.rb'
require_relative './Help.rb'
require 'colorize'


# Menu class that will provide all menu-ing options throughout the application
class Menu


    def initialize
        @answers = [{
            1 => ["1", "start"],
            2 => ["2", "convert"],
            3 => ["3", "help"]
        },
        {
            1 => ["1", "download", "save"],
            2 => ["2", "convert"],
            3 => ["3", "back", "main menu"]
        }]

        @recipe = Recipe.new
        @convert = Convert.new
        @help = Help.new

    end

    def start_main_menu() # Start Menu class / main code block
        puts "[1] Start\n[2] Measurement Converter\n[3] How to Use".colorize(:blue)

        user_input = gets.chomp.downcase
        
        if @answers[0][1].include?(user_input)
            self.start_recipe
        elsif @answers[0][2].include?(user_input)
            self.start_convert
        elsif @answers[0][3].include?(user_input)
            self.help_start
        elsif user_input == "end"
            exit 
        else
            puts "Thats wasn't a valid input, type 1 to start program, type 2 to navigate to the conversion feature and type 3 to see help.".colorize(:red)
        end
    end

    # Start Recipe class / main code block / displays list of ingredients.
    def start_recipe
        @recipe.delete_recipes
        puts File.foreach("ingredient_list.txt") { |line| puts line }
        puts "What Ingredients do you have?".colorize(:blue)
        user_input = gets.chomp
        @recipe.search(user_input)
        self.print_recipe
        self.recipe_ask_for_options()
    end

    # Print recipe
    def print_recipe
        puts @recipe.recipe_name
        user_input = gets.chomp.to_i
        @recipe.select_recipe(user_input)
        self.start_main_menu
    end

    # CONSIDER PLACING THIS METHOD INTO module.rb
    def start_convert # Start Convert class / main code block
        puts "What do you want to convert?"
        puts "- [lbs] to kg\n- [oz] to grams\n- [gallon] to litre\n- [quart] to ml\n- [kg] to lbs\n- [grams] to ounce\n- [ml] to quartz\n- [litre] to gallon"
        user_input = gets.chomp
        case user_input
        when "lbs"
            puts "Converting lbs to kg"
            user_convert = gets.chomp
            puts "#{@convert.lbs_to_kg(user_convert)} kg"
        when "oz"
            puts "Converting ounce to grams"
            user_convert = gets.chomp
            puts "#{@convert.oz_to_g(user_convert)} g"
        when "gallon"
            puts "Converting gallon to litre"
            user_convert = gets.chomp
            puts "#{@convert.gallon_to_litre(user_convert)} litre"
        when "quart"
            puts "Converting quartz to mililitre"
            user_convert = gets.chomp
            puts "#{@convert.quart_to_ml(user_convert)} ml"
        when "kg"
            puts "Converting kg to lbs"
            user_convert = gets.chomp
            puts "#{@convert.kg_to_lbs(user_convert)} pounds"
        when "grams"
            puts "Converting grams to ounce"
            user_convert = gets.chomp
            puts "#{@convert.g_to_oz(user_convert)} oz"
        when "ml"
            puts "Converting mililitre to quartz"
            user_convert = gets.chomp
            puts "#{@convert.ml_to_quartz(user_convert)} quartz"
        when "litre"
            puts "Converting litre to gallon"
            user_convert = gets.chomp
            puts "#{@convert.litre_to_gallon(user_convert)} gallon"
        when "end"
            self.start_main_menu
        else
            puts "not a valid input"
        end
        self.start_convert
    end

    def recipe_ask_for_options
        puts ""
        puts "What would you like to do?"
        puts "- [1] Download recipe\n- [2] See Conversion tool\n- [3] Back to main menu "
        user_input = gets.chomp
        if @answers[1][1].include?(user_input)
            @recipe.download_recipe
            self.downloaded_menu_options
        elsif @answers[1][2].include?(user_input)
            self.start_convert
        elsif @answers[1][3].include?(user_input)
            self.start_main_menu
        elsif user_input == "end"
            exit 
        else
            puts "Thats wasn't a valid input, type 1 to start program, type 2 to navigate to the conversion feature and type 3 to see help.".colorize(:red)
        end
    end

    def downloaded_menu_options
        puts "Recipe saved in recipes.txt"
        puts "- [1] Delete saved recipes\n- [2] Return to main menu"
        user_input = gets.chomp
        if user_input == "1"
            @recipe.delete_saved_recipes
        elsif user_input == "2"
            self.start_main_menu
        else
            exit
        end
    end
end