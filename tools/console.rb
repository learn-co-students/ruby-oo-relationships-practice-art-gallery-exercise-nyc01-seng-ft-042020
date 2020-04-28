require_relative '../config/environment.rb'

gallery1 = Gallery.new("MOMA", "NYC")
gallery2 = Gallery.new("Tate Modern", "London")

artist1 = Artist.new("Caroline", 5)
artist2 = Artist.new("Paul", 10)

painting1 = Painting.new("Naked Woman", 300, gallery1, artist1)
painting2 = Painting.new("Flying Monkeys", 500, gallery2, artist2)
painting3 = Painting.new("Waterfall", 10000, gallery2, artist2)
painting4 = Painting.new("Waterfall", 10000, gallery2, artist2)
painting5 = Painting.new("Waterfall", 10000, gallery1, artist2)

binding.pry

puts "Bob Ross rules."
