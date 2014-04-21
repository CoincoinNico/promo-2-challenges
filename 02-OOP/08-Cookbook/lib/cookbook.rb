#model. Dialogue avec la BDD.
require "csv"

class Cookbook
  attr_reader :recipes
  def initialize(file)
    # TODO: Retrieve the data from your CSV file and store it in an instance variable
    @file = file
    @recipes = []
    CSV.read(@file).flatten.each { |recipe| @recipes << recipe}
  end

  # TODO: Implement the methods to retrieve all recipes, create, or destroy recipes
  def all
    @recipes
  end

  def create(recipe)
    @recipes << recipe
    self.save
  end

  def destroy(index)
    @recipes.slice!(index)
    self.save
  end

  # TODO: Implement a save method that will write the data into the CSV

  def save
    CSV.open(@file, "w") { |csv| @recipes.each { |recipe| csv << [recipe] } }
  end
  # And don't forget to use this save method when you have to modify something in your recipes array.
end

# leo = Cookbook.new("lib/recipes.csv")
# p leo.all
# leo.create("Cake")
# p leo.all
# leo.destroy(5)
# p leo.all

