require 'colorize'

module Help
    def start_help
        puts "\nHI THERE!".colorize(:magenta)
        puts "\nThis is the Help menu."
        puts "\nIf you have trouble understanding / navigation through this application, refer back to this page :)"
        puts ""
        puts "\nWhen navigating through a menu, please select the corresponding number to the option you would like."
        puts "\nUSING SHELL SCRIPTS!".colorize(:magenta)
        puts "\nYou can initiate the conversion tool with the help from shell commands."
        puts "To do so, activate the application as you normally would \n( e.g index.sh ) then append two arguments at the end, which conversion method you \nwould like and the number you would like to convert. For example:\n"
        puts "index.sh 'lbs to kg, 5".colorize(:red)
        
        puts "\nLIST OF ALL CONVERSION METHODS".colorize(:magenta)
        puts "\n- 'lbs to kg'\n- 'kg to lbs'\n- 'ounce to grams'\n- 'grams to ounce'\n- 'gallon to litre'\n- 'litre to gallon'\n- 'quartz to ml'\n- 'ml to quartz'\n".colorize(:yellow)
        end
end