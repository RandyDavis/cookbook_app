class Cookbook
	attr_reader :recipes
	attr_accessor :title
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

	# The Long Way for the search method
	# def search
	# 	puts "What recipe would you like to find? Enter recipe title."
	# 	search_item = gets.chomp
		
	# 	if @recipes.map { |recipe_obj| recipe_obj.title }.include?(search_item)
	# 		@recipes.each do |x| 
	# 			if x.title == search_item
	# 				puts "Here is the recipe for #{search_item}:"
	# 				x.print_recipe
	# 			end
	# 		end
	# 	else
	# 		puts "Recipe not found.  Check back later."
	# 	end
	# end

	# The short way for the search method
	def search
		puts "What recipe would you like to find? Enter recipe title."
		search_item = gets.chomp

		result = @recipes.find { |x| x.title == search_item }
		if result
			puts "Here is the recipe for #{search_item}:"
			result.print_recipe
		else
			puts "Recipe not found."
		end
	end

	def has_dairy(recipe)
    	if recipe.ingredients.include? ("cheese" || "milk")
      		puts "This #{recipe.title} recipe has dairy products."
    	else
      		puts "This is a dairy-free recipe."
    	end
  	end
end

class Recipe
	attr_reader :title
	attr_accessor :ingredients, :steps

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
