class Gallery
  @@all = []
  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city

    Gallery.all<<self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |i|
      i.gallery == self
    end
  end

  def artists
    paintings.map do |i|
      i.artist
    end.uniq
  end

  def artist_names
    artists.name
  end

  def most_expensive_painting
    paintings.max_by{|i| i.price}
  end

end
