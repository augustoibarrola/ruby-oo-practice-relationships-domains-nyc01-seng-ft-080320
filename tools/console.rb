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

Pry.start




