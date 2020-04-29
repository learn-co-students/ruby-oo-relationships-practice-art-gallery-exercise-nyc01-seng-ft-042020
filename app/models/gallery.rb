class Gallery
  @@all = []
  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    Gallery.all << self
  end

  def self.all
   @@all
  end

 def paintings
  Painting.all.select { |e| e.gallery == self ? e : nil}.compact
 end

 def artists
  self.paintings.map { |e| e.artist }
 end

 def artist_names
   self.artists.collect { |e| e.name }
end

def most_expensive_painting
 self.paintings.max_by{ |e| e.price}

end

end
