class CLIPortfolioProject::CLI
  
    def call
      puts "Hi! What would you like to learn today?"
      puts "Please type one of the following: Hayom yom, Rambam or type 'exit'"
      input = nil
       while input != "exit"
       input = gets.strip
       case input
       when "Hayom yom"
          CLIPortfolioProject::Daily_Studies.hayom_yom
          puts "To continue learning please type in one of the above options. Otherwise, please type 'exit'. Thank you!"
       when "Rambam"
         CLIPortfolioProject::Daily_Studies.rambam
       when "exit"
         puts "Goodbye, please come back tomorow to learn more!"
       else
         puts "Sorry no such option yet."
       end
      end
     end    
   # def hayom_yom
     # @hayom_yom = CLIPortfolioProject::Daily_Studies.hayom_yom
    #end
  
    
#    def rambam
#      @rambam = CLIPortfolioProject::Daily_Studies.rambam
#    end
   
   
end