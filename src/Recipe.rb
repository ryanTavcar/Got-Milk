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
                else 
                    
                end
            end
        #if key["ingredients"].include?(user_input)
        #    @targeted_recipe[recipe_names] = key
        #    @recipe_ingredients.push(key["ingredients"].sort)
        #    @recipe[recipe_names] = key
            #@recipe_key.push(key)
        #    @recipe_name.push(recipe_names)
        #elsif key["ingredients"] == user_input
        #    @targeted_recipe[recipe_names] = keys
        end
        #p @recipe_name
        #p @recipe_keywords
        #p @recipe_ingredients
        #p @recipe_description
        #p @recipe_directions

        @recipe_name
    end

    def download_recipe()
        @targeted_recipe.each do |k,v|
            File.open("recipes.txt", 'a') do |f| 
                f.puts *k 
                f.puts "\n"
                f.puts *v
                f.puts "\n"
            end
        end
    end

    def delete_recipes
        @targeted_recipe = {}
    end

    def delete_saved_recipes
        File.open("recipes.txt", 'w') {|f| f.puts ""}
    end

end