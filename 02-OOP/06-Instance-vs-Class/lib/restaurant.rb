class Restaurant
  attr_reader :city

  def initialize(city, name)
    @city, @name = city, name
    @average_array = []
  end

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
