require_relative '../config/environment.rb'

basquiat = Artist.new("Jean-Michel Basquiat", 10)
raymond_p = Artist.new("Raymond Pettibon", 30)
jenny_h = Artist.new("Jenny Holzer",25)
moma = Gallery.new("MoMA", "NYC")
tate = Gallery.new("Tate", "London")

basquiat.create_painting("Dog Leg Study", 900, moma)
raymond_p.create_painting("No Title(Kryptonite Kisses..", 10000, moma)
jenny_h.create_painting("Inflammatory Essays", 800, tate)
raymond_p.create_painting("Painting", 300,moma)


binding.pry

puts "Bob Ross rules."
