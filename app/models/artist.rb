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
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    paintings.map {|painting| painting.gallery}.uniq
  end

  def cities
    galleries.map {|gallery| gallery.city}.uniq
  end

  def self.total_experience
    total_years = 0
    Artist.all.each do |artist|
      total_years += artist.years_experience
    end
    total_years
  end

  def self.most_prolific
    productivity_array = Artist.all.map {|artist| artist.paintings.size/artist.years_experience}
    Artist.all.find { |artist| (artist.paintings.size / artist.years_experience) == paintings_array.max}
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
