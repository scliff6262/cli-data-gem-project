require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_top_100(url)
    wine_hashes = []
    html = Nokogiri::HTML(open(url))
    wine_cards = html.css(".tasting_note").each_with_index do  |each_wine, index|
    wine_hash = {}
    wine_hash["name"] = each_wine.css("h3").text.match(/\D+/)[0]
    wine_hash["rank"] = index + 1
    wine_hash["vintage"] = each_wine.css(".vintage").text
    wine_hash["about"] = each_wine.css(".description").text
    wine_hash["country"] = each_wine.css(".country").text
    wine_hash["region"] = each_wine.css(".region").text
    wine_hash["score"] = each_wine.css(".count").text
    wine_hashes << wine_hash
    end
    wine_hashes
  end

end

#Scraper.scrape_top_100("https://www.jamessuckling.com/wine-tasting-reports/top-100-wines-2017")
