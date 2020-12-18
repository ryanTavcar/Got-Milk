require_relative './Menu.rb'
require 'json'

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

   def get_json
        recipe_json = File.read('./recipes.json')
        @json_recipes = JSON.parse(recipe_json)
   end

   def search(user_input)
    # Returns recipes with the given @user_input value
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

    def download_recipe()
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

    def delete_recipes
        @recipe_name = []
    end

    def delete_saved_recipes
        File.open("recipes.txt", 'w') {|f| f.puts ""}
    end

    def select_recipe(user_input)
        i = 0
        while i <= @recipe_name.size
            index = @recipe_name.find_index {|item| item == @recipe_name[i]}
            if index == user_input
                    system("clear")
                    puts @recipe_name[i]
                    puts "Description : #{@recipe_description[i]}"
                    puts "Ingredients : #{@recipe_ingredients[i]}"
                    puts "Directions : #{@recipe_directions[i]}"
            elsif index != user_input

            else 
                puts "That wasn't correct... try again."
 
            end
            i = i+1
        end
    end

end