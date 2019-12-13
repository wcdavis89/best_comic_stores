class BestComicStores::Stores
  attr_accessor :name_loc, :website, :description
  
  def self.all
    self.scrape_flavorwire
  end
  
  def self.scrape_flavorwire
    stores = []
    locations = []
    websites = []
    description = []
    
    doc = Nokogiri::HTML(open("https://www.fodors.com/news/photos/11-super-places-that-comic-book-fans-must-visit"))
    
    name = doc.search("h2").each {|store| stores << store.text}
    location = doc.search("h3 span").each {|location| locations << location.text.strip}
    website = doc.search("p a").each{|store|websites << store.attr("href")}
    description = doc.search("p").text
   binding.pry
  
    stores << self.scrape_flavorwire
    stores.pop
    websites.shift
    stores
  end
  
end