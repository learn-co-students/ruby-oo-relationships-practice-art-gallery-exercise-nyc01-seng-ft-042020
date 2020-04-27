require_relative '../config/environment.rb'

fionn = Artist.new("Fionn Regan", 20)
adrienne = Artist.new("Adrienne Lenker", 10)
moma = Gallery.new("MoMA", "New York")
blue = Gallery.new("Blue", "Los Angeles")

fionn.paintings
fionn.galleries
fionn.cities
Artist.total_experience

fionn.create_painting("The End of History", 100, moma)
adrienne.create_painting("Abysskyss", 50, blue)
adrienne.create_painting("Womb", 85, moma)

fionn.prolific_index
adrienne.prolific_index
Artist.most_prolific #=> Adrienne

moma.paintings
moma.artists
moma.artist_names
moma.most_expensive_painting #=> "The End of History"



binding.pry

puts "Bob Ross rules."
