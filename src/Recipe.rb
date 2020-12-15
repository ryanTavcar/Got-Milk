require_relative './Menu.rb'
require 'json'

class Recipe
   def initialize()
    @targeted_recipe = {}
    #@user_input = ""
   end

   def start    # Start Recipe class / main code block / displays list of ingredients.
        puts File.foreach("ingredient_list.txt") { |line| puts line }
        puts "What Ingredients do you have?"
        @user_input = gets.chomp
        search()
   end

   def search()
    # Returns recipes with the given @user_input value
        recipe_json = File.read('./recipes.json')
        json_recipes = JSON.parse(recipe_json)
        json_recipes.each do |recipe_names, key|
            if key["ingredients"].include?(@user_input)
                @targeted_recipe[recipe_names] = key
            elsif key["ingredients"] == @user_input
                @targeted_recipe[recipe_names] = key
            end
        end
        pp @targeted_recipe
        convert = Convert.new.start
   end

    def print_recipe()
        @targeted_recipe.each do |key, value|
            value.each { |keys, value| puts "#{keys} : #{value}" }
        end
    end

end