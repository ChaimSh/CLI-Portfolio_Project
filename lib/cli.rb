class CLIPortfolioProject::CLI
  
    def call
     
      
      puts "Hi! What would you like to learn today?"
      puts "Please type one of the following: Hayom yom, Rambam, All or type 'exit'"
      CLIPortfolioProject::Daily_Studies.array_load
        input = nil
        while input != "exit"
        input = gets.strip
        case input
          when "Hayom yom"
           display_lesson(CLIPortfolioProject::Daily_Studies.find_by_text_study('Hayom_yom'))
            puts "To continue learning please type in one of the above options. Otherwise, please type 'exit'. Thank you!"
          when "Rambam"
            display_lesson(CLIPortfolioProject::Daily_Studies.find_by_text_study('Rambam'))
            puts "To continue learning please type in one of the above options. Otherwise, please type 'exit'. Thank you!"
          when "All"
            CLIPortfolioProject::Daily_Studies.all.each { |lesson| display_lesson(lesson)  }
            puts "To continue learning please type in one of the above options. Otherwise, please type 'exit'. Thank you!"
          when "exit"
            puts "Goodbye, please come back tomorrow to learn more!"
          else
            puts "Sorry no such option yet."
        end
      end
    end    

   
   def display_lesson(study_obj)
     #study_obj.each do |output|
        puts study_obj.name
        puts "                  "
        puts study_obj.text
        puts "-----------------------------"
        puts " "
        puts "Credits:"
        puts study_obj.credits
        puts "                               "
        puts "                              "
         if study_obj.text_study == "Rambam"
           extra_rambam_text(study_obj)
         end
      #end
   end
   
   def extra_rambam_text(study_obj)
    puts "If you would like to see the unabridged version of the Mitzvah please type 'y'. Otherwise please type in anything. Thank you!"
    input = gets.strip
      if input == "y"
        puts study_obj.full_text
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
    # puts lesson_text
end