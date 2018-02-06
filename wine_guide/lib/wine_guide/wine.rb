class Wine
  attr_accessor :name, :rank, :vintage, :about, :country, :region, :score

  @@all =[]

  def initialize(wine_hash)
    wine_hash.each do |key, value|
      self.send("#{key}=", value)
    end
    @@all << self
  end

  def self.create_from_array(wines_array)
    wines_array.each do |each_wine_hash|
      new_wine_obj = self.new(each_wine_hash)
    end
  end

  def self.all
    @@all
  end

end
