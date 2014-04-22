# require 'open-uri'
# require 'json'
# require 'nokogiri'

class Recipe
  attr_accessor :name, :prep_time, :cooking_time, :rating, :votes, :summary

  def initialize
    @name = name
    @prep_time = prep_time
    @cooking_time = cooking_time
    @rating = rating
    @votes = votes
    @summary = summary
  end

  def to_s
    "#{@name}: #{prep_time} #{cooking_time} #{rating} #{votes} #{summary}"
  end

end

# response = open("http://www.marmiton.org/recettes/recherche.aspx?aqt=fraise").read
# puts response

# doc = Nokogiri::HTML(File.open(open("http://www.marmiton.org/recettes/recherche.aspx?aqt=fraise")))

# doc.search('.m_search_result').each do |element|
#     puts "#{element.search('.m_search_titre_recette > a').inner_text}"
#     puts "Rating : #{element.search('.etoile1').size} / 5}"
#     puts "Nb votes: #{element.search('.m_search_nb_votes').inner_text.match(/\d+/)}"
#     puts "Cooking time: #{element.search('.m_search_result_part4').inner_text.split(/\D+/)[2].to_i}}"
#     puts "Summary: #{element.search('.m_search_result_part4').inner_text.squeeze(" ").strip[37..187]}"

# end