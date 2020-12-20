require_relative './Menu.rb'
require 'json'
require 'colorize'

class Recipe
    attr_accessor :recipe_name, :recipe_ingredients, :recipe_description, :recipe_directions
   def initialize()
        @json_recipes = {}
        @recipe_key = []
        @recipe_name = []
        @recipe_keywords = []
        @recipe_ingredients = []
        @recipe_description = []
        @recipe_directions = []
   end

   # Retrieves and parses JSON data
   def get_json
        recipe_json = File.read('./recipes.json')
        @json_recipes = JSON.parse(recipe_json)
   end

    # Returns recipes with the given @user_input value
   def search(user_input)
        get_json
        @json_recipes.each do |recipe_names, keys|
            keys.each do |key, value|
                if key["keyword"].include?(user_input)
                    @recipe_keywords.push(key["keyword"])
                    @recipe_name.push(key["name"])
                    @recipe_ingredients.push (key["ingredients"])
                    @recipe_description.push(key["description"])
                    @recipe_directions.push(key["directions"])
                    
                elsif key["keyword"].sort == user_input.split(' ').sort
                    @recipe_keywords.push(key["keyword"])
                    @recipe_name.push(key["name"])
                    @recipe_ingredients.push (key["ingredients"])
                    @recipe_description.push(key["description"])
                    @recipe_directions.push(key["directions"])
                else      
                end
            end
        end
        @recipe_name
    end

    # Save recipes into 'recipes.txt' file.
    def save_recipe()
        File.open("recipes.txt", 'a') do |f| 
         f.puts @recipe_name
         f.puts "\n"
         f.puts @recipe_description
         f.puts "\n"
         f.puts @recipe_ingredients
         f.puts "\n"
         f.puts @recipe_directions
        end
    end

    # Delete items in the @recipe_name array.
    def delete_recipes()
        @recipe_name = []
    end

    # Delete saved recipes in the 'recipes.txt' file. 
    def delete_saved_recipes
        File.open("recipes.txt", 'w') {|f| f.puts ""}
    end

    # printing recipes after choosing which recipe you want.
    def select_recipe(user_input)
        i = 0
        while i <= @recipe_name.size
            index = @recipe_name.find_index {|item| item == @recipe_name[i]}
            if index == user_input
                    system("clear")
                    puts @recipe_name[i].colorize(:cyan)

                    puts "\nDescription : ".colorize(:yellow)
                    puts @recipe_description[i]

                    puts "\nIngredients : ".colorize(:yellow)
                    puts @recipe_ingredients[i]

                    puts "\nDirections : ".colorize(:yellow)
                    puts @recipe_directions[i]

                    puts ""
                    break
            elsif index != user_input

            else 
                puts "That wasn't correct... try again.".colorize(:red)
            end
            i = i+1
        end
    end

end