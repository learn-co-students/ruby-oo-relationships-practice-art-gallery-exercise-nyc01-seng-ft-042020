class Gallery

  attr_reader :name, :city
  @@all = []
  def initialize(name, city)
    @name = name
    @city = city
    Gallery.all << self
  end
  def self.all 
    @@all 
  end 
  def paintings 
    Painting.all.select {|paintings| paintings.gallery == self}
    # returns an array of all paintings in THIS gallery
  end
  def artists 
    paintings.map {|paintings| paintings.artist}
  end
  def artists_names
    artists.map {|artists| artists.name}
  end 
  def most_expensive_painting
    most_expensive_num = paintings.map {|paintings| paintings.price}.max
    paintings.find do |paintings| 
      paintings.price == most_expensive_num
    end
  end
end

# **GALLERY**

#  (( * `Gallery.all`
#     * Returns an `array` of all the galleries ))

#   ((* `Gallery#paintings`
#     * Returns an `array` of all paintings in a gallery)) 

#  (( * `Gallery#artists`
#     * Returns an `array` of all artists that have a painting in a gallery))

#   ((* `Gallery#artist_names`
#     * Returns an `array` of the names of all artists that have a painting in a gallery))

#   ((* `Gallery#most_expensive_painting`
#     * Returns an `instance` of the most expensive painting in a gallery))