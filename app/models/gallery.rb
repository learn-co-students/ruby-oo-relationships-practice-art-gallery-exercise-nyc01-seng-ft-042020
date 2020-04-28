class Gallery

  @@all = []
  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    Gallery.all << self
  end
  
  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

    def artists
      paintings.map do |painting|
      painting.artist
    end
    end

    def artist_names
      paintings.map do |painting|
      painting.artist.name
      end
  end
  
  def most_expensive_painting
    total = 0
    ans = []
    paintings.each do |painting| 
      if painting.price > total 
      ans.push(painting)
      end
    end
    ans.last
  end


end
