class Artist

  attr_reader :name, :years_experience
  
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    Artist.all << self
  end

  #Returns an array of all the artists
  def self.all
    @@all
  end

  #Returns an array all the paintings by an artist
  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  #Returns an array of all the galleries that an artist has paintings in
  def galleries
    paintings.map {|painting| painting.gallery}
  end

  #Return an array of all cities that an artist has paintings in
  def cities
    galleries.map {|gallery| gallery.city}
  end

  #Returns an integer that is the total years of experience of all artists
  def self.total_experience
    self.all.map {|artist| artist.years_experience}.sum
  end

  #helper_method
  def prolific_index
    self.paintings.count.to_f / self.years_experience.to_f
  end

  #helper method
  def self.prolific_indexes
    self.all.map {|artist| artist.prolific_index}
  end

  #helper method
  def self.highest_prolific_index
    self.prolific_indexes.max
  end
  
  #Returns an instance of the artist with the highest amount of paintings per year of experience.
  def self.most_prolific
    self.all.select {|artist| artist.prolific_index == highest_prolific_index}
  end

  #Given the arguments of title, price and gallery, creates a new painting belonging to that artist
  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
