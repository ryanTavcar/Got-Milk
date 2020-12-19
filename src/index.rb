require_relative './Menu.rb'
require_relative './Recipe.rb'
require_relative './Convert.rb'

convert = Convert.new
menu = Menu.new

if ARGV.empty? == true
    menu.start_main_menu
end

case ARGV.empty? == false

when ARGV[0] == "lbs to kg"
    puts "#{convert.lbs_to_kg(ARGV[1])} kg"
when ARGV[0] == "kg to lbs"
    puts "#{convert.kg_to_lbs(ARGV[1])} lbs"
when ARGV[0] == "ounce to grams"
    puts "#{convert.oz_to_g(ARGV[1])} g"
when ARGV[0] == "grams to ounce"
    puts "#{convert.g_to_oz(ARGV[1])} oz"
when ARGV[0] == "gallon to litre"
    puts "#{convert.gallon_to_litre(ARGV[1])} litre"
when ARGV[0] == "litre to gallon"
    puts "#{convert.litre_to_gallon(ARGV[1])} gallon"
when ARGV[0] == "quartz to ml"
    puts "#{convert.quart_to_ml(ARGV[1])} ml"
when ARGV[0] == "ml to quartz"
    puts "#{convert.ml_to_quartz(ARGV[1])} quartz"
else
    menu.start_main_menu
end




