require_relative './Menu.rb'
require 'json'

class Recipe
    attr_accessor :recipe_list
   def initialize()
    @json_recipes = {}
    @targeted_recipe = {}
    @recipe_list = []
   end

   def get_json
        recipe_json = File.read('./recipes.json')
        @json_recipes = JSON.parse(recipe_json)
   end

   def search(user_input)
        # Returns recipes with the given @user_input value
        self.get_json
        @json_recipes.each do |recipe_names, key|
            if key["ingredients"].include?(user_input)
                @targeted_recipe[recipe_names] = key
                @recipe_list.push(recipe_names)
            else puts "That's not an ingredient."
                self.search
            end
        end
        
        @targeted_recipe
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


elsif key["ingredients"] == user_input
    @targeted_recipe[recipe_names] = keys