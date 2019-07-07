class CLIPortfolioProject::CLI
  
    def call
     
      
      puts "Hi! What would you like to learn today?"
      puts "Please type one of the following: Hayom yom, Rambam or type 'exit'"
      classes = CLIPortfolioProject::Daily_Studies.new
      classes.array_load
    
        input = nil
        while input != "exit"
        input = gets.strip
        case input
          when "Hayom yom"
           CLIPortfolioProject::CLI.hayom_yom(classes)
            puts "To continue learning please type in one of the above options. Otherwise, please type 'exit'. Thank you!"
          when "Rambam"
            CLIPortfolioProject::CLI.rambam(classes)
            puts "To continue learning please type in one of the above options. Otherwise, please type 'exit'. Thank you!"
          when "exit"
            puts "Goodbye, please come back tomorrow to learn more!"
          else
            puts "Sorry no such option yet."
        end
      end
    end    
  
  
  
   def self.hayom_yom(classes)
     puts "Hayom Yom:"
     classes.find_by_text_study("Hayom_yom").each do |output|
        puts "#{output.name}"
        puts "               "
        puts "#{output.text}"
        puts "-------------------------"
        puts " "
        puts "Credits:"
        puts "#{output.credits}"
        puts " "
        puts "                         "
      end
    end
  
   def self.rambam(classes)
     puts "Daily Mitzvah:" 

     classes.find_by_text_study("Rambam").each do |output|
        puts "#{output.name}"
        puts "                  "
        puts "#{output.text}"
        puts "-----------------------------"
        puts " "
        puts "Credits:"
        puts "#{output.credits}"
        puts "                              "
        puts "                              "
       end
      puts "If you would like to see the unabridged version of the Mitzvah please type 'y'. Otherwise please type in anything. Thank you!"
      input = gets.strip
        if input == "y"
          classes.find_by_text_study("Rambam").each do |output|
         puts "#{output.full_text}"
         end
       end
    end
   
end