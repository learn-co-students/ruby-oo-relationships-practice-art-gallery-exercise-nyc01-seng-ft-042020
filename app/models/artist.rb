class Artist
 @@all = []
  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    Artist.all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

    def galleries
      paintings.map do |painting|
        painting.gallery
      end
    end

    def cities
      galleries.map do |gallery|
        gallery.city
      end
    end

      def self.total_experience
        total = 0
        self.all.each do |artist|
          total = total + artist.years_experience
        end
        total
    end

    def self.most_prolific
    years_exp = Painting.all.select do |e|
        e.artist.years_experience
    end 

    num_paintings = Painting.all.map do |e|
      e.artist.title.count
    end
    puts "years exp is #{years_exp}"
    puts "num_paintings is #{num_paintings}"
  end


def create_painting(title,price,gallery)
Painting.new(title,price,self,gallery)
end

end
