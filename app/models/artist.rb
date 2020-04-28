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
    Painting.all.select {|X| x.artist == self}
  end

  def galleries
    paintings.map(&:museum)
  end

  def cities
    galleries.map(&:city)
  end


  def self.total_experience
    Artist.all.map(&:years_experience).sum
  end


  def self.most_prolific
    Artist.all.max_by do |artist|
      artist.paintings.length / artist.years_experience
    end
  end



  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end







end
