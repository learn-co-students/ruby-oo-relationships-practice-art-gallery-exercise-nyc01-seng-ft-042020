class Artist
  @@all = []
  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    Artist.all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select { |e| e.artist == self ? e : nil}.compact
  end

  def galleries
    self.paintings.map { |e| e.gallery }
  end

  def cities
    self.galleries.map { |e| e.city }
  end

  def self.total_experience
    Artist.all.map { |e| e.experience }.sum
  end

  def get_artist_average
     self.paintings.count / self.years_experience
  end

  def self.get_artist_average(artist)
     artist.paintings.count / artist.years_experience.to_f
  end

  def self.most_prolific
     Artist.all.max_by{ |e| e.get_artist_average}

   end

  def create_painting(title, price, gallery)
    Painting.new(title, price, gallery, self)
  end

end
