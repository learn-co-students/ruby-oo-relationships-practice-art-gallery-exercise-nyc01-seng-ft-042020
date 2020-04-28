class Artist
@@all = []
  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    Artist.all<<self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |i|
      i.artist==self
    end
  end

  def gallaries
    paintings.map do |i|
      i.gallery
    end.uniq
  end

  def cities
    gallaries.map do |i|
      i.city
    end.uniq
  end

  def self.total_experience
    Artist.all.sum{|i| i.years_experience}
  end

  def self.most_prolific
    prolific=[Artist.all[0],(Artist.all[0].paintings.length/Artist.all[0].years_experience.to_f)]
    Artist.all.each do |i|
      value = i.paintings.length/i.years_experience.to_f
      if(value>prolific[1])
        prolific[0] = i
        prolific[1] = value
      end
    end
    prolific[0]
  end

  def create_painting(title,price,gallery)
    Painting.new(title,price,self,gallery)
  end




end
