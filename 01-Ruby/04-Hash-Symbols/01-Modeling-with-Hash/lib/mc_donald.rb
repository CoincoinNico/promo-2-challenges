require "pry"

MacDo = {
Cheese_Burger: 290,
Big_Mac: 300,
Mc_Bacon: 400,
Royal_Cheese: 130,
French_fries: 130,
Potatoes: 130,
Coca: 160,
Sprite: 170,
}

Meals = {
	Happy_Meal: MacDo[:Cheese_Burger] + MacDo[:French_fries] + MacDo[:Coca],
	Best_of_big_mac: MacDo[:Big_Mac] + MacDo[:French_fries] + MacDo[:Coca],
	Best_of_royal_cheese: MacDo[:Royal_Cheese] + MacDo[:Potatoes] + MacDo[:Sprite],
}


def poor_calories_counter(burger, side, beverage)
  #TODO: return number of calories for this mcDonald order
  p MacDo[burger] + MacDo[side] + MacDo[beverage] 

end

def calories_counter(*orders)
  #TODO: return number of calories for a less constrained order
  calories = 0
  orders.each do |order|
  	if MacDo[order].nil?
  		calories += Meals[order]
  	else
  		calories += MacDo[order]
  	end
  end
  p calories
end


puts poor_calories_counter(:Cheese_Burger, :French_fries, :Coca)

puts calories_counter(:French_fries, :Happy_Meal, :Sprite)