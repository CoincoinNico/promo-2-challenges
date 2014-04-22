#model. Dialogue avec la BDD.
require "csv"
require 'open-uri'
require 'json'
require 'nokogiri'
require_relative "recipe"

class Cookbook
  attr_reader :recipes
  def initialize(file)
    # TODO: Retrieve the data from your CSV file and store it in an instance variable
    @file = file
    @recipes = []
    CSV.read(@file).flatten.each { |recipe| @recipes << recipe}
  end

  # TODO: Implement the methods to retrieve all recipes, create, or destroy recipes
  def web_import(ingredient)
    doc = Nokogiri::HTML(File.open(open("http://www.marmiton.org/recettes/recherche.aspx?aqt=#{ingredient}")))
    doc.search('.m_search_result').each do |element|
      recipe = Recipe.new
      recipe.name = "#{element.search('.m_search_titre_recette > a').inner_text}, "
      recipe.rating = "Rating : #{element.search('.etoile1').size / 5}, "
      recipe.votes = "Nb votes: #{element.search('.m_search_nb_votes').inner_text.match(/\d+/)}, "
      recipe.prep_time = "Prep time: #{element.search('.m_search_result_part4').inner_text.split(/\D+/)[1].to_i} minutes,"
      recipe.cooking_time = "Cooking time: #{element.search('.m_search_result_part4').inner_text.split(/\D+/)[2].to_i} minutes,"
      recipe.summary =  "Summary: #{element.search('.m_search_result_part4').inner_text.squeeze(" ").strip[37..186]}"
      @recipes << recipe.to_s
      self.save
    end
  end

  def all
    @recipes
  end

  def create(recipe)
    @recipes << recipe
    self.save
  end

  def destroy(index)
    recipe = @recipes.slice!(index)
    self.save
    recipe
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

