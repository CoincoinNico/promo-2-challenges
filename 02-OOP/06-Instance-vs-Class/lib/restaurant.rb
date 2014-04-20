class Restaurant
  attr_reader :city
  #TODO add relevant accessors if necessary

  def initialize(city, name)
    #TODO: implement constructor with relevant instance variables
    @city, @name = city, name
    @average_array = []
  end

  #TODO: implement #filter_by_city and #rate methods
  def rate(rating)
    @average_array << rating.to_f
  end

  def average_rating
    @average_array.reduce(:+) / @average_array.length
  end

  def self.filter_by_city(restaurants, city)
    restaurants.select { |resto| resto.city == city }
  end

end
