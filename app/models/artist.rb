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
    Painting.all.select do |x|
      # binding.pry
      x.artist == self
      # binding.pry
    end
  end

  def galleries
    paintings.map do |x|
      x.gallery
    end
  end

  def cities
    galleries.map do |x|
      x.city
    end
  end

  def self.total_experience
    self.all.map do |x|
      x.years_experience
    end.sum
  end

  def self.most_prolific
    Artist.all.max_by {|artist| artist.paintings.length / artist.years_experience}
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end




end
