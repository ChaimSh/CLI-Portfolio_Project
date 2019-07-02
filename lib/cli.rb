class CLIPortfolioProject::CLI
  
  
    def call
     
      
      puts "Hi! What would you like to learn today?"
      puts "Please type one of the following: Hayom yom, Rambam or type 'exit'"
        input = nil
        while input != "exit"
        input = gets.strip
        case input
          when "Hayom yom"
            CLIPortfolioProject::CLI.hayom_yom
            puts "To continue learning please type in one of the above options. Otherwise, please type 'exit'. Thank you!"
          when "Rambam"
            CLIPortfolioProject::Daily_Studies_Scrape.rambam_scrape
            puts "To continue learning please type in one of the above options. Otherwise, please type 'exit'. Thank you!"
          when "exit"
            puts "Goodbye, please come back tomorrow to learn more!"
          else
            puts "Sorry no such option yet."
        end
      end
    end    
  
    
  def self.hayom_yom
    puts "Hayom Yom:"
    hayom_yoms = CLIPortfolioProject::Daily_Studies_Scrape.hayom_yom_scrape
    hayom_yoms.each do |output|
     puts "#{output.name}"
     puts "               "
     puts "#{output.text}"
     puts "-------------------------"
     puts " "
     puts "Credits:"
     puts "#{output.credits}"
     puts "                          "
     puts "                         "
    end
  end
  
 def self.rambam
   puts "Daily Mitzvah:" 
    rambams = CLIPortfolioProject::Daily_Studies_Scrape.rambam_array
    rambams.each do |output|
     puts "#{output.name}"
     puts "                  "
     puts "#{output.text}"
     puts "-----------------------------"
     puts " "
     puts "Credits:"
     puts "#{output.credits}"
     puts "                              "
     puts "                              "
     puts "If you would like to see the unabridged version of the Mitzvah please type 'y'. Otherwise please type in anything. Thank you!"
     input = gets.strip
     if input == "y"
       puts "#{output.full_text}"
       
     end
    end
  end
   
end