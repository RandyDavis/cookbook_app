require_relative 'cookbook'


mex_cuisine = Cookbook.new("Mexican Cooking")
burrito = Recipe.new("Bean Burrito", ["tortilla", "bean", "cheese"], ["heat beans", "heat tortilla", "place beans in tortilla", "sprinkle cheese on top", "roll up"])
taco = Recipe.new("Taco", ["taco shells", "seasoned taco meat", "lettuce", "tomatoes", "cheese", "guacamole", "sour cream"], ["heat seasoned taco meat", "prepare shells", "fill shells with taco meat", "top with lettuce, tomatoes, and cheese"])

puts mex_cuisine.title # Mexican Cooking
puts burrito.title # Bean Burrito
p burrito.ingredients # ["tortilla", "bean", "cheese"]
p burrito.steps # ["heat beans", "heat tortilla", "place beans in tortilla", "sprinkle cheese on top", "roll up"]

mex_cuisine.title = "Mexican Recipes"
puts mex_cuisine.title # Mexican Recipes

burrito.title = "Veggie Burrito"
burrito.ingredients = ["tortilla", "bean"]
burrito.steps = ["heat tomatoes", "place tomatoes in tortilla", "roll up"]
mex_cuisine.add_recipe(taco)

p burrito.title # "Veggie Burrito"
p burrito.ingredients # ["tortilla", "tomatoes"]
p burrito.steps # ["heat tomatoes", "place tomatoes in tortilla", "roll up"]


mex_cuisine.recipes # []
mex_cuisine.add_recipe(burrito) # Added a recipe to the collection: Veggie Burrito
p mex_cuisine.recipes # [#Recipe:)x007fbc3b..... @title = "Veggie Burrito", @ingredients=["totilla", "tomatoes"], @steps=["heat tomatoes", "place tomatoes in tortilla", "roll up"]]

mex_cuisine.recipe_titles # Veggie Burrito
mex_cuisine.recipe_ingredients # These are the ingredients for Veggie Burrito: ["tortilla", "bean"]

burrito.print_recipe
mex_cuisine.print_cookbook

mex_cuisine.has_dairy(burrito)
mex_cuisine.has_dairy(taco)
taco.prep_time