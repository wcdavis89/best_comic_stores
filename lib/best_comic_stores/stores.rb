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
        
    stores.name = doc.search("div.subtitle h2").text.gsub(/\s+/, " ")
    stores.location = doc.search("h3 span").text
    stores.website = doc.search("p a").text
    stores.description = doc.search("div.slide-text p").text
      
    binding.pry
    
   end
  
end