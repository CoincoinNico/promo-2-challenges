require "pry"

MAC_DO = {
	Cheese_Burger: 290,
	Big_Mac: 300,
	Mc_Bacon: 400,
	Royal_Cheese: 130,
	French_fries: 130,
	Potatoes: 130,
	Coca: 160,
	Sprite: 170,
}

MEALS = {
	Happy_Meal: MACDO[:Cheese_Burger] + MACDO[:French_fries] + MACDO[:Coca],
	Best_of_big_mac: MACDO[:Big_Mac] + MACDO[:French_fries] + MACDO[:Coca],
	Best_of_royal_cheese: MACDO[:Royal_Cheese] + MACDO[:Potatoes] + MACDO[:Sprite],
}


def poor_calories_counter(burger, side, beverage)
  #TODO: return number of calories for this mcDonald order
  MACDO[burger] + MACDO[side] + MACDO[beverage]

end

def calories_counter(*orders)
  #TODO: return number of calories for a less constrained order
  calories = 0
  orders.each do |order|
  	if MACDO[order]
  		calories += MACDO[order]
  	else
  		calories += MEALS[order]
  	end
  end
  calories
end


puts poor_calories_counter(:Cheese_Burger, :French_fries, :Coca)

puts calories_counter(:French_fries, :Happy_Meal, :Sprite)