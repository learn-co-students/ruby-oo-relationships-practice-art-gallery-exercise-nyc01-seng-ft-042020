class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    Painting.all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    #returns a total (ineger) of all paintings
    total = 0
    self.all.each do |painting|
      total += painting.price
    end
    total
  end
end

# DONE PAINTING

# DONE Painting.all - Returns an array of all the paintings

# DONE Painting.total_price - Returns an integer that is the total price of all paintings