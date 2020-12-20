# GOT MILK?

### Github
[https://github.com/ryanTavcar/Got-Milk](https://github.com/ryanTavcar/Got-Milk)

### Describe
Got Milk? is a terminal application that searches through ingredients provided by the user input and returns a list of recipes that can be created with the corresponding ingredients. Got Milk? currently features 7 recipes with an assortment of keywords to search through. 

Got Milk? Also comes with nifty features such as; a measurement conversion tool with the ability to access the conversion tool via shell scripts and the ability to save your favorites recipes to a text file wihtin the same directory as the source code.

### Identify
This application is intended to help users save money as to avoid buying take-out or going to the grocery store and buy unnecessary ingreidents. Many times i get take away because i do not have the ingredients to make the meals i want. This app solves this problem because now users are able to list the ingredients they have in the kitchen and have the app return a list a recipes that the user can make.

The target audience is intended for young adults who may be finding their footing around the kitchen an do not know where to start. Also, young adults are often the demographic that needs to save money and buying take out several times a week does not help.

### Explain
The user will navigate the program via the menu options and select a corresponding promt. When launching the application, select promt 3 to navigate to the help menu, which will provide intructions on how to use the application. 
POTENTIAL PROBLEM: When searching for recipes, the ingredients you list must be exact to the search algorithm, otherwise an error will be printed to the terminal, prompting you to re-list your ingredients. 

## Table of Contents
+ [Functionality / Features](#functionality-/-features)
+ [UI / UX](#UI-/-UX)
+ [Control Flow Diagrams](#control-flow-diagrams)
+ [Implementation Plan](#implementation-plan)
+ [Testing](#testing)
+ [Help](#help)

## Functionality / Features
Got milk? Defines 3 distinct features 
First being, the ability to search through stored recipes in a json object and return the recipe or recipes that match the user’s input to the recipes ingredients. Got Milk? currently has 7 recipes however out data is alwasy growing. The functionality of the feature works best when the user types in one ingredient, though only because there is a limited data collection. Otherwise, the user is to type out all of the ingredients that pertain to a certain recipe (in exact order is not necessary nor in exact capitalisation). 

Then we have the feature to save recipes into a text file so that the user does not need to open the app and shift through menus just to find a recipe that they like and want to make again. Or maybe the user just wants to be able to print the recipe to paper. The save feature will print out the recipe line for line apphending recipes into the text file. Once a recipe has been added, a menu will appear asking the user if they would like to delete the contents in the text file. if prompted '1' the text file will be empty and ready to add new recipes. 

And also, Got milk? Features a measurement conversion tool that will convert common cooking measurements of either metric to US imperial and vice versa. This nifty tool always comes with the ability to access the conversion features via command line arguments. ( To see how that is accomplished, check out the 'Help' section of this README.) The conversion tool is only able to convert common cooking measurments e.g mass and volume - with temperture becoming a new conversion feature with the next version update. 


## UI / UX
    GOT MILK?

    [1] Start
    [2] Measurement Converter
    [3] How to Use

    What Ingredients do you have?

    List of potential ingredients:

    - Chicken			    - Broccoli
    - Beef				    - Carrots
    - Lamb				    - Lettuce
    - Fish				    - Apples
    - Self-raising Flour    - Bacon
    - All-purpose Flour		- White wine
    - Baking powder			- Brown sugar
    - Salt				    - Bananas
    - Thyme				    - Eggs
    - Rosemary			    - Lemons
    - Chili powder			- chicken/beef/vegetable stock
    - Garlic				- Milk
    - Soy sauce			    - Rice
    - Vinegar				- Vanilla extract
    - Butter


* user types - Milk Eggs Flour Salt Vanilla Butter*

        - [1] Mini German Pancakes
        - [2] Vanilla Cake
        - [3] Omelette

*press 1 or mini german pancakes*


        MINI GERMAN PANCAKES

        Description: These are so tasty and fun!

        Ingredients:
            1 cup milk
            6 eggs
            1 cup flour
            1/2 tsp salt
            1 tsp vanilla
            1/4 cup butter, melted

        Directions:
            - Preheat oven to 400 degrees F. Blend first five ingredients (milk thru vanilla) in a blender.  
        Be careful to see that any flour clumps get well-blended.
            - Blend in butter a little at a time in order to temper the eggs.
            - Grease muffin tins well and distribute batter evenly between 24 tins  Bake for 15 minutes, or until puffy and golden on top.


    What would you like to do?

    - [1] Save recipe(s)
    - [2] See Conversion tool
    - [3] Back to main menu

*press 1 to save recipes to text*
*press 2 to navigate to conversion tool*
*press 3 to go back to main menu*


## Control Flow Diagrams
![Got Milk? Diagram](docs\img\Got_Milk_diagram.png)

## Implementation Plan

## Trello Board Version 1
![Trello board version 1](docs\img\trello_board_1.jpg)
![Trello board version 1](docs\img\trello_board_1.1.jpg)
![Trello board version 1](docs\img\trello_board_1.2.jpg)

## Trello Board Version 2
![Trello board version 1](docs\img\trello_board_2.jpg)

## Trello Board Version 3
![Trello board version 1](docs\img\trello_board_3.jpg)
![Trello board version 1](docs\img\trello_board_3.1.jpg)
![Trello board version 1](docs\img\trello_board_3.2.jpg)
![Trello board version 1](docs\img\trello_board_3.3.jpg)

## Trello Board Version 4
![Trello board version 1](docs\img\trello_board_4.jpg)

## Trello Board Version 5
![Trello board version 1](docs\img\trello_board_5.jpg)

## Testing
### Manual Testing
![Manual Testing](docs\img\manual_testing.jpg)

## Help
To install Got Milk? fork or clone the code from this github page. Then navigate to the directory the program resides in. navigate to the folder src, 
there double click on run_app.sh or index.rb.

You can initiate the conversion tool with the help from shell commands.
To do so, activate the application as you normally would
( e.g ruby index.rb ) then append two arguments at the end, which conversion method you
would like and the number you would like to convert. For example:
index.rb 'lbs to kg, 5

LIST OF ALL CONVERSION METHODS:

- 'lbs to kg'
- 'kg to lbs'
- 'ounce to grams'
- 'grams to ounce'
- 'gallon to litre'
- 'litre to gallon'
- 'quartz to ml'
- 'ml to quartz'

When utilising the application and greeted with a menu, simply navigate through the menu by selecting the corresponding number to the option you would like.

This application uses the colorize gem that is bundled in with the application.

