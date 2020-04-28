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
    Painting.all.select do |x|
      x.gallery == self
    end
  end

  def artists
    paintings.map do |x|
      x.artist
    end
  end

  def artist_name
    artists.map do |x|
      x.name
    end
  end

  def most_expensive_painting
    Painting.all.max_by do |x|
      x.price
    end
  end

end
