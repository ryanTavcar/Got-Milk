require_relative './Menu.rb'
require 'json'

class Recipe
   def initialize()
    @targeted_recipe = {}
   end

   def search(user_input)
        # Returns recipes with the given @user_input value
        recipe_json = File.read('./recipes.json')
        json_recipes = JSON.parse(recipe_json)
        json_recipes.each do |recipe_names, key|
            if key["ingredients"].include?(user_input)
                @targeted_recipe[recipe_names] = key
            elsif key["ingredients"] == user_input
                @targeted_recipe[recipe_names] = keys
            end
        end
        @targeted_recipe
   end

    def download_recipe()
        puts ":)"
        #@targeted_recipe.each do |key, value|
        #    value.each { |keys, value| puts "#{keys} : #{value}" }
        #end
    end

    def delete_recipes
        @targeted_recipe = {}
    end
end