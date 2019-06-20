class CLIPortfolioProject::CLI
  
    def call
      puts "Hi! What would you like to learn today?"
      puts "Please type one of the following: Hayom yom, Rambam"
      input = gets.strip
       if input == "Hayom yom"
         hayom_yom
       elsif input == "Rambam"
         rambam
       else
         puts "Sorry no such option yet."
       end
    end
  
    
    def hayom_yom
      
      puts "The early sages, who were like angels (may their merit protect us) have already determined that the healing of the soul is like the healing of the body:"
      @hayom_yom = CLI_Portfolio_Project::Daily_Studies.hayom_yom
    end
  
    
    def rambam
puts <<-DOC
"Negative Commandment 219 (Digest)
Muzzling a Working Animal

'You shall not muzzle the ox when it is threshing'—Deuteronomy 25:4.

It is forbidden to prevent an animal from eating from produce upon which it is working—e.g., if it is threshing grain or carrying a bundle of hay. It is even forbidden to prevent it by verbally [shouting at it when it wishes to eat].

Positive Commandment 244 (Digest)
The Borrower

'And if a man borrows from his neighbor...'—Exodus 22:13.

We are commanded [to follow all the laws outlined in the Torah] regarding one who borrows an object from his fellow."
   DOC
   
   @rambam = CLI_Portfolio_Project::Daily_Studies.rambam
   end
   
   
end