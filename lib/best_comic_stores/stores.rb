class BestComicStores::Stores
  attr_accessor :name, :location, :website, :description
  
  def self.all
    #stores object?
    # puts <<-DOC.gsub /^\s*/,''
    #   1. Atomic Books 
    #   2. Forbidden Planet
    #   DOC
  
  store_1=self.new
  store_1.name = "Atomic Books"
  store_1.location = "Baltimore, MD"
  store_1.website = "https://atomicbooks.com/"
  store_1.description = "Surely the platonic ideal of an indie comics store, Atomic Books is pretty much the be-all and end-all for comic fans of the non-superhero variety. While the shop hardly confines itself to comics, it is the likeliest place to find lots of underground stuff, from small-press single issues to DIY mini comics and zines. Its mail order business is legend, and we pore over the place’s weekly newsletter. Purists may turn up their noses at the wide range of other products Atomic sells: literary novels, art books, design toys, crafting guides, music, DVDs… etc. But what matters is that its entire stock is meticulously curated by its whip-smart staff, which means the junk quotient is minimal. Their wonderful events feature readings, a weekly knitting night, and a book club. Their blog is actually worth reading. And just in case you weren’t impressed yet, Atomic is also the only store in the world that has been given the esteemed privilege of collecting John Waters’s mail."
  
  store_2=self.new
  store_2.name = "Forbidden Planet"
  store_2.location = "New York, NY"
  store_2.website = "https://www.fpnyc.com/"
  store_2.description = "Before you enter Forbidden Planet for the first time, take a deep breath. The aisles are going to be packed with people. You are going to have check your bag. And you’re going to want to buy everything. But what Forbidden Planet lacks in atmosphere it makes up for in pure breadth of selection. If you’re into Marvel and DC, they’ve got you covered. If you’re a toys and gaming freak, this is your stop, too. Manga heads will also find Forbidden Planet to their liking. There’s even a decent selection of graphic novels for any stray indie kids who wander over from The Strand, down the street. In the entirely likely event that you are the victim of brusque service, try to remember that this shop may well house the busiest comic shop staff in the world."
  
  [store_1, store_2]
  end
  
  # def store_info
  #   @store_info = BestComicStores::StoreInfo.all
  # end
end