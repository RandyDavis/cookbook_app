class Cookbook
	attr_reader :recipes
	def initialize(title)
		@title = title
		@recipes = []
	end

	def title
		@title
	end

	def add_recipe(recipe)
		@recipes.push(recipe)
		puts "Added a recipe to the collection: #{recipe.title}"
	end

	def recipe_titles(recipe)
		@recipes.each do |x|
			puts "#{recipe.title}"
		end
	end

	def recipe_ingredients(recipe)
		puts "These are the ingredients for #{recipe.title}: #{recipe.ingredients}"
	end

	def print_cookbook
		@recipes.each_with_index do |value, index|
			puts " "
			puts "#{index+1}. Recipe Name: #{value.title}"
			puts "   Recipe Ingredients: #{value.ingredients.join(', ')}"
			puts "   Steps:"
			value.steps.each_with_index do |x, number|
				puts "     #{number+1} - #{x}"
			end
		end
	end
end

class Recipe
	attr_reader :title
	attr_writer :steps
	attr_accessor :ingredients

	def initialize(title, ingredients, steps)
		@title = title
		@ingredients = ingredients
		@steps= steps
	end

	def title= (new_title)
		@title = new_title
	end

	def print_recipe
		puts "Recipe Name: #{@title}"
		puts "Recipe Ingredients: #{@ingredients.join(', ')}"
		puts "Preparation Steps: "
		@steps.each_with_index do |value, index|
			puts "#{index+1}.  #{value}"
		end
	end


end


mex_cuisine = Cookbook.new("Mexican Cooking")
burrito = Recipe.new("Bean Burrito", ["tortilla", "bean", "cheese"], ["heat beans", "place beans in torilla", "roll up"])
quesadilla = Recipe.new("Cheese Quesadilla", ["tortilla", "cheese"], ["place tortilla in hot pan", "place desired amount of cheese on tortilla", "cover with another tortilla", "flip after 45 seconds", "remove from heat after letting other side cook for 45 seconds"])

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
mex_cuisine.add_recipe(burrito) #Added a recipe to the collection: Veggie Burrito
mex_cuisine.add_recipe(quesadilla)

p mex_cuisine.recipes # [#<Recipe:0x007f90bd219300 @title="Veggie Burrito", @ingredients=["tortilla", "tomatoes"], @steps=["heat tomatoes", "place tomatoes in tortilla", "roll up"]>]

burrito.print_recipe

mex_cuisine.print_cookbook