

class Recipe
   def initialize()
    @ingredient_list = File.foreach("ingredient_list.txt") { |line| puts line }
   end

   def start
    puts @ingredient_list
    puts "What Ingredients do you have?"
    user_input = gets.chomp
   end
end