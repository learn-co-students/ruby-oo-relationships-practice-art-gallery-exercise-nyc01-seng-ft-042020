class Painting
  @@all
  attr_reader :title, :price, :gallery, :artist
  @@all = []

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    Painting.all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    Painting.all.collect { |p| p.price }.sum
  end

end
