require_relative './Menu.rb'

class Convert
    def initialize
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