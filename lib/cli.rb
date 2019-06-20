class CLIPortfolioProject::CLI
  
    def call
      puts "Hi! What would you like to learn today?"
      puts "Please type one of the following: Hayom yom, Rambam"
      input = gets.strip
       if input == "Hayom yom"
         Hayom_yom
       elsif input == "Rambam"
         Rambam
       else
         puts "Sorry no such option yet."
       end
    end
  
    
    def Hayom_yom
      
      puts "The early sages, who were like angels (may their merit protect us) have already determined that the healing of the soul is like the healing of the body:"
       end
  
  
  
end