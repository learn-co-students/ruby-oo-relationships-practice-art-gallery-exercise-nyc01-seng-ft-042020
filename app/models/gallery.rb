require 'pry'

class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    Gallery.all << self
  end

  #Returns an array of all the galleries
  def self.all
    @@all
  end

  #Returns an array of all paintings in a gallery
  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end

  #Returns an array of all artists that have a painting in a gallery
  def artists
    paintings.map {|painting| painting.artist}
  end

  #Returns an array of the names of all artists that have a painting in a gallery
  def artist_names
    artists.map {|artist| artist.name}
  end

  #helper method
  def prices
    paintings.map {|painting| painting.price}
  end

  #helper method
  def highest_price
    prices.max
  end

  #Returns an instance of the most expensive painting in a gallery
  def most_expensive_painting
    paintings.select {|painting| painting.price == highest_price}
  end

end
