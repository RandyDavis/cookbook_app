require_relative 'cookbook2'

mex_cuisine = Cookbook.new("Mexican Cooking")
burrito = Recipe.new("Bean Burrito", ["tortilla", "bean", "cheese"], ["heat beans", "place beans in torilla", "roll up"])
puts mex_cuisine.title # Mexican Cooking
puts burrito.title # Bean Burrito
p burrito.ingredients # ["tortilla", "bean", "cheese"]
p burrito.steps # ["heat beans", "place beans in tortilla", "roll up"]

mex_cuisine.title = "Mexican Recipes"
puts mex_cuisine.title # "Mexican Recipes"

burrito.title = "Veggie Burrito"
burrito.ingredients = ["tortilla", "tomatoes"]
burrito.steps = ["heat tomatoes", "place tomatoes in tortilla", "roll up"]

p burrito.title # Veggie Burrito
p burrito.ingredients # ["tortilla", "tomatoes"]

mex_cuisine.recipes # []
mex_cuisine.add_recipe(burrito)
p mex_cuisine.recipes # [#<Recipe:0x007f90bd219300 @title="Veggie Burrito", @ingredients=["tortilla", "tomatoes"], @steps=["heat tomatoes", "place tomatoes in tortilla", "roll up"]>]