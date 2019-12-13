class BestComicStores::CLI 
  
  def greeting
     puts "Hey there! We have a list of the Best Comic Book Stores across the United States!"
    #keep greeting puts in greeting. It makes list_stores look odd
   list_stores
    menu
    goodbye
  end
  
  def list_stores
      stores = BestComicStores::Stores.all
  #it might work, I've moved the method to stores.rb
  #also, I need a spacer of some sort
  stores.each.with_index(1) {|store, i| puts "#{i}. #{store}"}
  end
  
    def menu
      
      input = nil
      while input != "exit"
      puts "Which one did you want to hear about? Enter the number, type 'list' to see the list again, or type 'exit' to leave the application: "
        input=gets.strip.downcase
        if input.to_i > 0
            puts @stores[input.to_i-1].name
          elsif input == "list"
             list_stores
          else 
            puts "Oops! Our list doesn't reach that far, here are the choices again."
        
        end
      end
    end
    
    # def menu_2
      
    #   input = nil
    #   while input != "exit"
    #   puts "Press '1' for a quick description. Type 'menu' or 'list' to check out another store. Type 'exit' to exit.
    #   if input.to_i == 1
    #       puts @store_info.description
    
           
           
  def goodbye
    puts "Safe travels!"
  end
  
  
  
end