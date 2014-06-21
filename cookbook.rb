class Cookbook
  
  attr_reader :recipes
  attr_accessor :title
  
  def initialize(title)
    @title = title
    @recipes = []
  end
  
  def add_recipe(recipe)
    @recipes.push(recipe)
    puts "Added a reciple to the collection: #{recipe.title}"
  end
  
  def recipe_titles
    @recipes.each do |recipe|
      puts "#{recipe.title}"
    end
  end
  
  def recipe_ingredients
    @recipes.each do |recipe|
      puts "These are the ingredients for #{recipe.title}: #{recipe.ingredients.join(", ")}"
    end
  end
  
  def print_cookbook
    @recipes.each do |x|
      puts ""
      puts "Recipe Name: #{x.title}"
      puts "Ingredients: #{x.ingredients.join(", ")}"
      puts "Steps: "
      x.steps.each_with_index do |step, index|
          puts "#{index+1}. #{step}"
      end
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
    
  attr_accessor :ingredients, :steps, :title
  
  def initialize(title, ingredients, steps)
    @title       = title
    @steps       = steps
    @ingredients = ingredients
  end
  
  def print_recipe
      puts "Recipe Name: #{@title}"
      puts "Ingredients: #{@ingredients.join(", ")}"
      puts "Preparation Steps: "
      @steps.each_with_index do |step, index|
          puts "#{index+1}. #{step}"
      end
  end

  def prep_time
    @ingredients = @ingredients.length
    if @ingredients <= 5
      puts "Preparation time is less than 5 minutes.  Baking time will vary based on recipe."
    elsif @ingredients > 5 && @ingredients <= 10
      puts "Preparation time is 5 to 10 minutes.  Baking time will vary based on recipe."
    else
      puts "It's going to be a while before you actually start cooking the food on this one."
    end
  end
end






