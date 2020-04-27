require_relative '../config/environment.rb'

#seeds
    a1 = Artist.new("Mishti", 10)
    a2 = Artist.new("Noya", 30)
    a3 = Artist.new("Noyonika", 5)
    a4 = Artist.new("Muturao", 3)
    a5 = Artist.new("Mishti Googoobabala", 6)
    a6 = Artist.new("Sharmishtha", 40)
    a7 = Artist.new("Shar", 36)
    a8 = Artist.new("Chini", 27)
    a9 = Artist.new("Mrs. Nath", 2)
    a10 = Artist.new("Pari", 80)
    a11 = Artist.new("Tosh", 27)

    g1 = Gallery.new("David Zwirner", "New York")
    g2 = Gallery.new("Michael Werner", "New York")
    g3 = Gallery.new("Hauser & Wirth", "New York")
    g4 = Gallery.new("Gagosian", "New York")
    g5 = Gallery.new("Gladstone", "New York")
    g6 = Gallery.new("Centre A", "Vancouver")
    g7 = Gallery.new("Catriona Jeffires", "Vancouver")

    #title, price, artist, gallery)
    p1 = Painting.new("Spring", rand(1000), a1, g3)
    p2 = Painting.new("Summer", rand(1000), a2, g7)
    p3 = Painting.new("Autumn", rand(1000), a3, g4)
    p4 = Painting.new("Fall", rand(1000), a4, g1)
    p5 = Painting.new("Winter", rand(1000), a5, g2)
    p6 = Painting.new("Flower", rand(1000), a6, g6)
    p7 = Painting.new("Clouds", rand(1000), a7, g1)
    p8 = Painting.new("Sun", rand(1000), a8, g2)
    p9 = Painting.new("Forest", rand(1000), a9, g3)
    p10 = Painting.new("Woods", rand(1000), a10, g4)
    p11 = Painting.new("Jungle", rand(1000), a11, g4)
    p12 = Painting.new("Beach", rand(1000), a1, g5)
    p13 = Painting.new("Sand", rand(1000), a2, g5)
    p14 = Painting.new("Stream", rand(1000), a3, g7)
    p15 = Painting.new("Ocean", rand(1000), a4, g7)
    p16 = Painting.new("River", rand(1000), a5, g6)
    p17 = Painting.new("Lake", rand(1000), a1, g6)
    p18 = Painting.new("Beech", rand(1000), a10, g2)
    p19 = Painting.new("Fir", rand(1000), a11, g1)
    p20 = Painting.new("Mango", rand(1000), a1, g1)
    p21 = Painting.new("a", 100, a1, g1)
    p22 = Painting.new("b", 150, a1, g1)
    p23 = Painting.new("c", 50, a1, g1)
    p24 = Painting.new("d", 750, a1, g1)
    p25 = Painting.new("e", 200, a1, g1)
    p26 = Painting.new("f", 800, a1, g1)
    p27 = Painting.new("g", 1050, a1, g1)
    p28 = Painting.new("h", 650, a1, g1)
    p29 = Painting.new("i", 300, a1, g1)
    p30 = Painting.new("j", 450, a1, g1)




binding.pry

puts "Bob Ross rules."
