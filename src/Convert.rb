class Convert
    def initialize
     
    end
 
    def start
        puts "What do you want to convert?"
        puts "- [lbs] to kg\n- [oz] to grams\n- [gallon] to litre\n- [quart] to ml\n- [kg] to lbs\n- [grams] to ounce\n- [ml] to quartz\n- [litre] to gallon"
        user_input = gets.chomp
        case user_input
        when "lbs"
            puts "Converting lbs to kg"
            user_convert = gets.chomp
            puts "#{lbs_to_kg(user_convert)} kg"
        when "oz"
            puts "Converting ounce to grams"
            user_convert = gets.chomp
            puts "#{oz_to_g(user_convert)} g"
        when "gallon"
            puts "Converting gallon to litre"
            user_convert = gets.chomp
            puts "#{gallon_to_litre(user_convert)} litre"
        when "quart"
            puts "Converting quartz to mililitre"
            user_convert = gets.chomp
            puts "#{quart_to_ml(user_convert)} ml"
        when "kg"
            puts "Converting kg to lbs"
            user_convert = gets.chomp
            puts "#{kg_to_lbs(user_convert)} pounds"
        when "grams"
            puts "Converting grams to ounce"
            user_convert = gets.chomp
            puts "#{g_to_oz(user_convert)} oz"
        when "ml"
            puts "Converting mililitre to quartz"
            user_convert = gets.chomp
            puts "#{ml_to_quartz(user_convert)} quartz"
        when "litre"
            puts "Converting litre to gallon"
            user_convert = gets.chomp
            puts "#{litre_to_gallon(user_convert)} gallon"
        when "end"
            menu = Menu.new.start
        else
            puts "not a valid input"
            self.start
        end
        self.start
    end

    def lbs_to_kg(user_convert) # divide the lbs value by 2.205 to get kg
        lbs = user_convert.to_i
        kg = (lbs / 2.205).ceil(2)
    end

    def oz_to_g(user_convert) # multiply the oz value by 28.35 to get grams
        oz = user_convert.to_i
        grams = (oz * 28.35).ceil(2)
    end

    def gallon_to_litre(user_convert) #  multiply the gallon value by 3.785 to get litre
        gallon = user_convert.to_i
        litre = (gallon * 3.785).ceil(2)
    end

    def quart_to_ml(user_convert) # multiply the quart value by 946 to get ml
        quart = user_convert.to_i
        ml = (quart * 946).ceil(2)
    end

    def kg_to_lbs(user_convert) # multiply the kg value by 2.205 to get lbs
        kg = user_convert.to_i
        lbs = (kg * 2.205).ceil(2)
    end
    
    def g_to_oz(user_convert) # divide the grams value by 28.35 to get oz
        grams = user_convert.to_i
        oz = (grams / 28.35).ceil(2)
    end

    def litre_to_gallon(user_convert) # divide the litre value by 3.785 to get gallon
        litre = user_convert.to_i
        gallon = (litre / 3.785).ceil(2)
    end

    def ml_to_quartz(user_convert) # divide the ml value by 946 to get quart
        ml = user_convert.to_i
        quartz = (ml / 946).ceil(2)
    end
 end