require_relative '../config/environment.rb'

a1 = Artist.new("Jack", 25)
a2 = Artist.new("Joe", 15)
g1 = Gallery.new("Louvre", "Paris")
g2 = Gallery.new("MET", "NYC")
p1 = Painting.new("Tree", 100, a1, g1)
p2 = Painting.new("Dawn", 200, a1, g2)
p3 = Painting.new("Night", 500, a2, g2)


binding.pry

puts "Bob Ross rules."
