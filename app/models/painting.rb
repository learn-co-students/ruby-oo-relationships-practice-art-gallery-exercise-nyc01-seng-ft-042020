class Painting

  attr_reader :title, :price, :artist
  attr_accessor :gallery
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
    tot_price = 0
    self.all.each do |painting|
      tot_price += painting.price
    end
    tot_price
  end
end
