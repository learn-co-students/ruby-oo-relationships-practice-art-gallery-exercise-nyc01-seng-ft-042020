class Artist

  attr_reader :name, :years_experience
@@all = []
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end
  def self.all
    @@all
  end


  def paintings 
     Painting.all.select do |v| #we are going into the class painting and selecting all to iterate 
      v.artist == self # here we are matching that to a selected artist
  end
end


  def galleries
    paintings.map do |v| #we are grabbing our helper method above and mapping 
      v.gallery #to get just the gallery
  end
end


def cities
  galleries.map do |v| #same thing as code above ^^^^
    v.city
  end
end


def self.total_experience
  Artist.years_experience.sum
end


def create_painting(title, price, gallery)
  Painting.new(title, price, self, gallery)
end

end
