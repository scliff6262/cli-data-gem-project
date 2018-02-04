class Wine
  attr_accessor :name, :rank, :vintage, :price, :about, :score

  @@all =[] 

  def initialize#(wine_hash)
    wine_hash.each do |key, value|
      wine_obj.send("#{key}=", value)
    end
    @@all << wine_obj
  end

  def self.all
    @@all
  end

  #wine_obj_2 = Wine.new
  #wine_obj_2.name = "K Syrah Walla Walla Valley Powerline Estate"
  #wine_obj_2.rank = 2
  #wine_obj_2.vintage = "2014"
  #wine_obj_2.price = "$45"
  #wine_obj_2.score = 95
  #wine_obj_2.about = "A knockout Syrah, precise and impeccably built but explosive with personality. Smoky roasted meat and floral blackberry aromas combine with bold, supple flavors of dark plum, pepper and licorice. The tannins are big but polished. Drink now through 2024. 1,319 cases made. —TF"
  #[wine_obj, wine_obj_2]

  end

end
