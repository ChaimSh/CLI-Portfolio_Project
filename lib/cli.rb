class CLIPortfolioProject::CLI
  
    def call
     
      
      puts "Hi! What would you like to learn today?"
      puts "Please type one of the following: Hayom yom, Rambam or type 'exit'"
      CLIPortfolioProject::Daily_Studies.array_load
        input = nil
        while input != "exit"
        input = gets.strip
        case input
          when "Hayom yom"
           display_shiur(CLIPortfolioProject::Daily_Studies.find_by_text_study('Hayom_yom'))
            puts "To continue learning please type in one of the above options. Otherwise, please type 'exit'. Thank you!"
          when "Rambam"
            display_shiur(CLIPortfolioProject::Daily_Studies.find_by_text_study('Rambam'))
            puts "To continue learning please type in one of the above options. Otherwise, please type 'exit'. Thank you!"
          when "exit"
            puts "Goodbye, please come back tomorrow to learn more!"
          else
            puts "Sorry no such option yet."
        end
      end
    end    
  
  
  
  # def self.hayom_yom()
  #   puts "Hayom Yom:"
  #   CLIPortfolioProject::Daily_Studies.find_by_text_study("Hayom_yom").each do |output|
  #       puts "#{output.name}"
  #       puts "               "
  #       puts "#{output.text}"
  #       puts "-------------------------"
  #       puts " "
  #       puts "Credits:"
  #       puts "#{output.credits}"
  #       puts " "
  #       puts "                         "
  #     end
      
    # end
  
  # def self.rambam()
  #   puts "Daily Mitzvah:" 

  #   CLIPortfolioProject::Daily_Studies.find_by_text_study("Rambam").each do |output|
  #       puts "#{output.name}"
  #       puts "                  "
  #       puts "#{output.text}"
  #       puts "-----------------------------"
  #       puts " "
  #       puts "Credits:"
  #       puts "#{output.credits}"
  #       puts "                              "
  #       puts "                              "
  #     end
     
  #   end
   
   def display_shiur(study_obj)
     study_obj.each do |output|
        puts "#{output.name}"
        puts "                  "
        puts "#{output.text}"
        puts "-----------------------------"
        puts " "
        puts "Credits:"
        puts "#{output.credits}"
        puts "                               "
        puts "                              "
         if output.text_study == "Rambam"
           extra_rambam_text(output)
         end
       end
     end
   
   def extra_rambam_text(output)
    puts "If you would like to see the unabridged version of the Mitzvah please type 'y'. Otherwise please type in anything. Thank you!"
      input = gets.strip
        if input == "y"
         puts output.full_text
         end
       end
   
   
   
   # name = study_obj.name
    # text = study_obj.text
    # credits = study_obj.credits
    # puts name
    # puts "                  "
    # puts text
    # puts "-----------------------------"
    # puts " "
    # puts "Credits:"
    # puts credits
    # puts "                              "
    # puts "                              "
    # puts shiur_text
end