class Painting

  attr_reader :title, :price, :artist, :gallery 
   
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
    total = 0 
      Painting.all.each do |painting|
        total = total + painting.price
      end 
    total 
  end

end


# **PAINTING**

#  ((* `Painting.all`
#     * Returns an `array` of all the paintings))

#   ((* `Painting.total_price`
#     * Returns an `integer` that is the total price of all paintings))