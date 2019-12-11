class BestComicStores::CLI 
  
  def greeting
     puts "Hey there! We have a list of the Best Comic Book Stores across the United States!"
    #keep greeting puts in greeting. It makes list_stores look odd
   list_stores
    menu
    goodbye
  end
  
  def list_stores
      @stores = BestComicStores::Stores.all
  #it might work, I've moved the method to stores.rb
  #also, I need a spacer of some sort
  end
  
    def menu
      
      input = nil
      while input != "exit"
      puts "Which one did you want to hear about? Enter the number, type 'list' to see the list again, or type exit to leave the application: "
        input=gets.strip.downcase
        case input
        when "1"
          puts "More info on number 1"
        when "2"
          puts "More info on number 2"
        when "list"
          list_stores
        else
          #this broke "exit"
          puts "Oops! Our list doesn't reach that far, here are the choices again."
          list_stores
          menu
        end
      end
    end
  
  def goodbye
    puts "Safe travels!"
  end
  
  
  
end