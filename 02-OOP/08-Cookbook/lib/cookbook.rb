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
    CSV.open(@file, "a") { @recipes << recipe }
  end

  def destroy(index)
    i = 0
    CSV.foreach(@file) do |row|
      @recipes.slice!(index) if i == index
      i += 1
    end
  end

  # TODO: Implement a save method that will write the data into the CSV

  def save
  end
  # And don't forget to use this save method when you have to modify something in your recipes array.
end

leo = Cookbook.new("lib/recipes.csv")
p leo.all
leo.create("Cake")
p leo.all

array = []
leo1 = CSV.read("lib/recipes.csv").flatten.each {|line| array << line}
p leo1
p array
leo.create("Cake")
p array

array.slice!(2)
p array