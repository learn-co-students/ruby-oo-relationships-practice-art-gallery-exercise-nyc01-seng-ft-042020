require_relative '../config/environment.rb'

bob = Artist.new('Bob Ross',10)
vinny = Artist.new('Vincent Van Gogh',20)

g1 = Gallery.new('MoMA','nyc')

vinny.create_painting('happy clound',50,g1)
vinny.create_painting('happy ground',50,g1)

binding.pry

puts "Bob Ross rules."
