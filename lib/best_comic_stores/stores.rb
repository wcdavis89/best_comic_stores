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
    
    name_loc = doc.search("strong").each {|location| stores << location.text}
    name = stores.each do |name| 
   binding.pry
  
    stores << self.scrape_flavorwire
 
    stores
  end
  
end