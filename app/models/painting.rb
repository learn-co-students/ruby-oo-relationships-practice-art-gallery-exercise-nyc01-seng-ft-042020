class Painting

  attr_reader :title, :price
  attr_accessor :artist, :museum

  @@all = []

  def initialize(title, price, artist, museum)
    @title = title
    @price = price
    @artist = artist
    @museum = museum
    Painting.all << self
  end

  def self.all
    @@all
  end


  def self.total_price
    Painting.all.map {|x| x.price}.sum
  end


end
