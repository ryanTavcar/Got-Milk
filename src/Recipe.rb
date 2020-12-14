require_relative './Menu.rb'
require 'json'

class Recipe
   def initialize()

   end

   def start    # Start Recipe class / main code block
    puts File.foreach("ingredient_list.txt") { |line| puts line }
    puts "What Ingredients do you have?"
    user_input = gets.chomp
    if user_input == "end"
        menu = Menu.new.start
    end
   end

   def search # Determine whether user_input is equal to ingredient_list
    # check if user_input is equal to recipe_array[1]["ingredients"] / recipe_array[1]["ingredients"].include?(user_input)
    # return recipe_array["chicken_soup"]
    recipe_json = File.read('./recipes.json')
    recipe_array = JSON.parse(recipe_json)
    #user_input = gets.chomp.split(" ")
    

   end
end