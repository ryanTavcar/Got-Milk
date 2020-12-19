module Help
    def start_help
        puts "Hi there!"
        puts "This is the Help menu."
        puts "\nIf you have trouble understanding / navigation through this application, refer back to this page :)"
        puts "When navigating through a menu, please select the corresponding number to the option you would like."
        puts "USING SHELL SCRIPTS!"
        puts "You can initiate the conversion tool with the help from shell commands."
        puts "To do so, activate the application as you normally would \n
            ( e.g index.sh ) then append two arguments at the end, which conversion method you \n
            would like and the number you would like to convert. For example: \n
            index.sh 'lbs to kg' 5"
        
        puts "LIST OF ALL CONVERSION METHODS"
        puts "- 'lbs to kg'\n
        - 'kg to lbs'\n
        - 'ounce to grams'\n
        - 'grams to ounce'\n
        - 'gallon to litre'\n
        - 'litre to gallon'\n
        - 'quartz to ml'\n
        - 'ml to quartz'"
    end
end