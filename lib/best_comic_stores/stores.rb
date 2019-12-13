class BestComicStores::Stores
  attr_accessor :name, :location, :website, :description
  
  def self.all
    self.scrape_fordors
  end
  
      def self.scrape_fordors
        names = []
        locations = []
        websites = []
        descriptions = []
        
        doc = Nokogiri::HTML(open("https://www.fodors.com/news/photos/11-super-places-that-comic-book-fans-must-visit"))
        
        name = doc.search("div.subtitle h2").each {|store| names << store.text.strip}
        location = doc.search("h3 span").each {|location| locations << location.text.strip}
        website = doc.search("p a").each{|store|websites << store.attr("href")}
        description = doc.search("div.slide-text p").each {|desc| descriptions << desc.text}
        
        websites.shift
        names.pop
        names
        locations
        websites  
        descriptions
        binding.pry
        
      end
  
end