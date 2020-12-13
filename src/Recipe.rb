

class Recipe
   def initialize()
    @ingredient_list = [
        "- Chicken",
        "- Brocolli",
        "- Beef",
        "- Carrots",
        "- Lamb",
        "- Lettuce",
        "- Fish",
        "- Apples",
        "- Self-raising Flour",
        "- Bacon",
        "- All-purpose Flour",
        "- White wine",
        "- Baking powder",
        "- Brown sugar",
        "- Salt",
        "- Bananas",
        "- Thyme",
        "- Eggs",
        "- Rosemary",
        "- Lemons",
        "- Chili powder",
        "- Chicken/Beef/Vegetable stock",
        "- Garlic",
        "- Milk",
        "- Soy sauce",
        "- Rice",
        "- Vinegar",
        "- Vanilla extract",
        "- Butter",
    ].sort
   end

   def start
    puts @ingredient_list
   end
end