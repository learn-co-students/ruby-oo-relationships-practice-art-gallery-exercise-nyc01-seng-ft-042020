require_relative '../config/environment.rb'


artist1 = Artist.new("Josh", 5)
artist2 = Artist.new("Jessica", 7)
artist3 = Artist.new("Sonia", 12)
gallery1 = Gallery.new("The Gallery", "New York")
gallery2 = Gallery.new("The Better Gallery", "New Jersey")
gallery3 = Gallery.new("The Best Gallery", "South Korea")
painting1 = Painting.new("The painting", 150, artist1, gallery1)
painting2 = Painting.new("The real Painting", 250, artist2, gallery2)
painting3 = Painting.new("The Real Painting Confirmed", 500, artist3, gallery3)



binding.pry

puts "Bob Ross rules."
