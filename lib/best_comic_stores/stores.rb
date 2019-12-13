class BestComicStores::Stores
  attr_accessor :name, :location, :website, :description
  
  def self.all
    #stores object?
    # puts <<-DOC.gsub /^\s*/,''
    #   1. Atomic Books 
    #   2. Forbidden Planet
    #   DOC
    self.scrape_flavorwire
  end
  
  def self.scrape_flavorwire
    stores = []
    
    doc = Nokogiri::HTML(open("https://www.flavorwire.com/119588/americas-10-greatest-comic-and-graphic-novel-stores"))
    
    name = doc.search("strong a").each {|name| stores << name.text}
    location = 
   binding.pry
  
    stores << self.scrape_flavorwire
 
    stores
  end
  
end