class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    Gallery.self << all
  end


  def self.all
    @@all
  end


  def paintings
    Painting.all.select {|x| x.museum == self}
  end

  def artists
    paintings.map(&:artist)
  end

  def artist_names
    artists.map(&:name)
  end


  def most_expensive_painting
    paintings.max_by(&:price)
  end

end
