class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end


  def self.all 
    @@all
  end


  def paintings
    Painting.all.select do |v| #we are going into the painting class and grabbing all to select 
      v.gallery == self #the gallery and we are comparing it to this instance
  end
end


def artists
  paintings.map do |v| #we are grabbing our helper method above and grabbing it into an array 
    v.artist #just pulling out the artist 
end
end
def artist_names
  artists.map do |v| #same as above but here we are getting the name
    v.name
end
end

end
