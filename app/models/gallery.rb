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

  # def paintings
  #   Painting.all.select do |painting|
  #     painting.
  #   end
  # end 

end


# GALLERY

# DONE Gallery.all - Returns an array of all the galleries
# 
# (relies on painting) Gallery#paintings
# Returns an array of all paintings in a gallery

# (relies on artist) Gallery#artists
# Returns an array of all artists that have a painting in a gallery

# (relies on artist) Gallery#artist_names
# Returns an array of the names of all artists that have a painting in a gallery

# Gallery#most_expensive_painting
# Returns an instance of the most expensive painting in a gallery