module Index

    def index_comparison(user_input, name, description, ingredients, directions)
        i = 0
        while i < name.size
            index = name.find_index {|item| item == name[i]}
            if index == user_input
                    system("clear")
                    puts name[i]
                    puts "Description : #{description[i]}"
                    puts "Ingredients : #{ingredients[i]}"
                    puts "Directions : #{directions[i]}"
            #else 
            #    puts "That wasn't correct... try again."
            #    self.print_recipe
            end
            i = i+1
        end
    end
end