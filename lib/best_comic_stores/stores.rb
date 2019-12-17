class BestComicStores::Stores
  attr_accessor :name, :location, :website, :description
  
  def self.all
    self.scrape_stores
  end
  
  def self.scrape_stores
    stores = []
    stores << self.scrape_fordors
    stores
  end
  
  def self.scrape_fordors
        stores = self.new
    doc = Nokogiri::HTML(open("https://www.fodors.com/news/photos/11-super-places-that-comic-book-fans-must-visit"))
        
    stores.name = doc.search("div.subtitle h2").text.split(/[\n]+/)
    stores.location = doc.search("h3 span").text.split(/[\n]+/)
    stores.website = doc.search("p a @href").text.split(", ")
    stores.description = doc.search("div.slide-text p").each {|description| description.text.split(", ")}
      
   binding.pry
    
   end
  
end
