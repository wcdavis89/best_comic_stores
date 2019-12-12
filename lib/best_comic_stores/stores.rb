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
    
    doc = Nokogiri::HTML(open("http://www.minitime.com/trip-tips/10-Best-Comic-Book-Stores-in-the-US-article"))
  
   name = doc.search("strong").each {|name| stores << name.text}
   
      binding.pry
    stores << self.scrape
  # store_1=self.new
  # store_1.name = "Atomic Books"
  # store_1.location = "Baltimore, MD"
  # store_1.website = "https://atomicbooks.com/"
  
  # store_2=self.new
  # store_2.name = "Forbidden Planet"
  # store_2.location = "New York, NY"
  # store_2.website = "https://www.fpnyc.com/"

  
    stores
  end
  
  
  # def store_info
  #   @store_info = BestComicStores::StoreInfo.all
  # end
end