class Artist

  attr_reader :name, :years_experience
  @@all = []
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    Artist.all << self
  end
  def self.all 
    @@all
  end 
  def paintings
    Painting.all.select {|paintings| paintings.artist == self}
    #returns all of the paintings that THIS artist has 
  end 
  def galleries
    paintings.map {|paintings| paintings.gallery}.uniq
  end 
  def cities 
    galleries.map {|galleries| galleries.city}
  end 
  def self.total_experience
    total = 0
    Artist.all.each do |artist|
      total = total + artist.years_experience
    end 
    total 
  end 
  def create_painting(title, price, gallery)
    Painting.new(title, price, gallery, self)
  end 
  def self.most_prolific
    self.all.max_by do |artists|
      artists.paintings.length / artists.years_experience
    end
# # Returns an `instance` of the artist with the highest amount of paintings per year of experience.
  end
end

# **ARTIST**

#   ((* `Artist.all`
#     * Returns an `array` of all the artists))

#   ((* `Artist#paintings`
#     * Returns an `array` all the paintings by an artist)) 

#   * ((`Artist#galleries`
#     * Returns an `array` of all the galleries that an artist has paintings in))

#   * ((`Artist#cities`
#     * Return an `array` of all cities that an artist has paintings in))

#   * ((`Artist.total_experience`
#     * Returns an `integer` that is the total years of experience of all artists))

#   * ((`Artist.most_prolific`
#     * Returns an `instance` of the artist with the highest amount of paintings per year of experience.))

#   * ((`Artist#create_painting`
#     * Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist))