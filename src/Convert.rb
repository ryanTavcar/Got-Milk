class Convert
    def initialize
     
    end
 
    def start
        puts "What do you want to convert?"
        puts "- [lbs] to kg\n- [oz] to grams\n- [gallon] to litre\n- [quart] to ml\n- [kg] to lbs\n- [g] to ounce\n- [ml] to quartz\n- [litre] to gallon"
        user_input = gets.chomp
        case user_input
        when "lbs"
            puts "Converting lbs to kg"
            user_convert = gets.chomp
            puts lbs_to_kg(lbs_convert)
        when "oz"
            puts "Converting ox to grams"
            user_convert = gets.chomp
            puts oz_to_g(user_convert)
        when "gallon"
            puts "Converting lbs to kg"
            user_convert = gets.chomp
            puts lbs_to_kg(user_convert)
        when "quart"
            puts "Converting lbs to kg"
            user_convert = gets.chomp
            puts lbs_to_kg(user_convert)
        when "kg"
            puts "Converting lbs to kg"
            user_convert = gets.chomp
            puts lbs_to_kg(user_convert)
        when "g"
            puts "Converting lbs to kg"
            user_convert = gets.chomp
            puts lbs_to_kg(user_convert)
        when "ml"
            puts "Converting lbs to kg"
            user_convert = gets.chomp
            puts lbs_to_kg(user_convert)
        when "l"
            puts "Converting lbs to kg"
            user_convert = gets.chomp
            puts lbs_to_kg(user_convert)
        end
    end

    def lbs_to_kg(lbs_convert) # divide the lbs value by 2.205 to get kg
        lbs = lbs_convert.to_i
        kg = (lbs / 2.205).ceil(2)
    end

    def oz_to_g() # multiply the oz value by 28.35 to get grams

    end

    def gallon_to_litre() #  multiply the gallon value by 3.785 to get litre

    end

    def quart_to_ml() # multiply the quart value by 946 to get ml

    end

    def kg_to_lbs() # multiply the kg value by 2.205 to get lbs

    end
    
    def g_to_oz() # divide the grams value by 28.35 to get oz

    end

    def litre_to_gallon() # divide the litre value by 3.785 to get gallon

    end

    def ml_to_quartz() # divide the ml value by 946 to get quart

    end
 end