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
  def self.total_experience
    #returns a total (ineger) of all paintings
    total = 0
    self.all.each do |artist|
      total += artist.years_experience
    end
    total
  end
  def create_painting(title, price, gallery)
    Painting.new(title, price)
  end
end
  # def self.most_prolific
  #   #returns the artist with the most paintings per year of experience.

  # end

# ARTIST

# DONE Artist.all - Returns an array of all the artists

# (relies on Painting) Artist#paintings
# Returns an array all the paintings by an artist

# (relies on Gallery) Artist#galleries
# Returns an array of all the galleries that an artist has paintings in

# (relies on Gallery) Artist#cities
# Return an array of all cities that an artist has paintings in

# DONE Artist.total_experience - Returns an integer that is the total years of experience of all artists

# Artist.most_prolific
# Returns an instance of the artist with the highest amount of paintings per year of experience.

# DONE Artist#create_painting - Given the arguments of title, price and gallery, creates a new painting belonging to that artist
