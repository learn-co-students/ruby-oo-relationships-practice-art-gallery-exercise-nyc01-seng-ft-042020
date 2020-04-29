require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'

artist1 = Artist.new('Pablo', 40)
artist2 = Artist.new('Leo', 60)

gallery1 = Gallery.new('The Gallery', 'NYC')
gallery2 = Gallery.new('The Gallery 2', 'L.A')

painting1 = Painting.new('title1', 1000, gallery1, artist1)
painting2 = Painting.new('title2', 3000, gallery2, artist2)

#Artist.most_prolific
