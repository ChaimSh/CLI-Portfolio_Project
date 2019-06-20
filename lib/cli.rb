class CLIPortfolioProject::CLI
  
    def call
      puts "Hi! What would you like to learn today?"
      puts "Please type one of the following: Hayom yom, Rambam"
      input = gets.strip
       if input == "Hayom yom"
          CLIPortfolioProject::Daily_Studies.hayom_yom
       elsif input == "Rambam"
         CLIPortfolioProject::Daily_Studies.rambam
       else
         puts "Sorry no such option yet."
       end
    end
  
    
   # def hayom_yom
     # @hayom_yom = CLIPortfolioProject::Daily_Studies.hayom_yom
    #end
  
    
#    def rambam
#      @rambam = CLIPortfolioProject::Daily_Studies.rambam
#    end
   
   
end