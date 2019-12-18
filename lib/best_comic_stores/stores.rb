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
    stores = []
    doc = Nokogiri::HTML(open("https://www.fodors.com/news/photos/11-super-places-that-comic-book-fans-must-visit"))
    doc.css("div.slide-content").each {|student| 
    store_details = {}
    store_details[:name] = doc.css("div.subtitle h2").text.split(/[\n]+/)
    store_details[:location] = doc.css("h3 span").text.split(/[\n]+/)
    store_details[:website] = doc.css("div.slide-text p a").attribute("@href").value
    store_details[:description] = doc.css("div.slide-text p").text.split(/[\n]+/)
    stores << store_details
    }
    stores
   binding.pry
   end
   
     def self.scrape_index_page(index_url)
    students = []
    html = open(index_url)
    index = Nokogiri::HTML(html)
    index.css("div.student-card").each do |student|
      student_details = {}
      student_details[:name] = student.css("h4.student-name").text
      student_details[:location] = student.css("p.student-location").text
      profile_path = student.css("a").attribute("href").value
      student_details[:profile_url] = profile_path
      students << student_details
    end
    students
  end
  
end
