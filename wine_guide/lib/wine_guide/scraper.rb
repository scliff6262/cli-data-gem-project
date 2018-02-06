require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_top_100(url)
    wine_hashes = [] 
    html = Nokogiri::HTML(open(url))
    binding.pry

  end

end

Scraper.scrape_top_100("https://www.jamessuckling.com/wine-tasting-reports/top-100-wines-2017")

# /\s\d+/ highlight Vintage
# /\D/ highlight text only
# Use index +1 for Suckling rank

wine_cards = html.css(".tasting_note").each do  |each_wine|

wine_name = .css("h3").text.match(/\D+/)[0]
wine_vintage = css(".vintage").text
wine_about = .css(".description").text
wine_country = .css(".country").text
wine_region = .css(".region").text
wine_score = .css(".count").text

end
