require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

chicagoloft = Listing.new("loft", "Chicago")
newyorkapartment = Listing.new("apartment", "New York")
chicagoapartment = Listing.new("apartment", "Chicago")
saudiloft = Listing.new("loft", "Saudi Arabia")

sarah = Guest.new("Sarah")
sarah = Guest.new("Sarah")
rick = Guest.new("Rick")
joe = Guest.new("Joe")
renaldo = Guest.new("Renaldo")

Trips.new(chicagoloft, sarah)
Trips.new(newyorkapartment, sarah)
Trips.new(newyorkapartment, rick)
Trips.new(chicagoapartment, joe)
Trips.new(chicagoapartment, renaldo)
Trips.new(saudiloft, renaldo)

yummbakery = Bakery.new("Yumm")
tummbakery = Bakery.new("TummBakes")
bakery = Bakery.new("Synth's Bakery")

milk = Ingredient.new("Milk", 56)
milkandcookies = Ingredient.new("Milk & Cookies", 300)
bread = Ingredient.new("Bread", 100)
soot = Ingredient.new("Soot", 0)

icecream = Dessert.new("Ice Cream", milk, yummbakery)
sandwich = Dessert.new("Sandwich", bread, tummbakery)
hellburrito = Dessert.new("Hell Burrito", soot, bakery)

Pry.start




