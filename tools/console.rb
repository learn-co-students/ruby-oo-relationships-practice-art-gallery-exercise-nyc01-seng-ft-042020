require_relative '../config/environment.rb'

artist1 = Artist.new("piccasso", 356)
artist2 = Artist.new("Bob Ross", 40)

gallery1 = Gallery.new("The Met", "NYC")
gallery2 = Gallery.new("The new museum", "NYC")

painting1 = Painting.new(artist1 ,"nice", 190432, gallery1)
painting2 = Painting.new(artist2 ,"nice day", 19043920, gallery2)


binding.pry

puts "Bob Ross rules."
