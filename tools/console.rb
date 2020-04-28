require_relative '../config/environment.rb'


alan = Artist.new("Alan", 7)
max = Artist.new("Max", 10)

moma = Gallery.new("MoMA", "New York")
louvre = Gallery.new("The Louvre", "Paris")
frick = Gallery.new("The Frick", "New York")
getty = Gallery.new("The Getty", "Los Angeles")

Painting.new("Pepper", 1000, alan, louvre)
Painting.new("Splatter", 500, max, getty)
alan.create_painting("Self Portrait", 2000, moma)
alan.create_painting("Cat with Fruit", 1000, moma)

binding.pry

puts "Bob Ross rules."
