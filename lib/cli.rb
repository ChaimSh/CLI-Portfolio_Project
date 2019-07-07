class CLIPortfolioProject::CLI
  
  attr_accessor :input, :find_by_text_study
  
    def call
     
      
      puts "Hi! What would you like to learn today?"
      puts "Please type one of the following: Hayom yom, Rambam or type 'exit'"
      shiurim = CLIPortfolioProject::Daily_Studies.new
      shiurim.array_load
    
        @input = nil
        while @input != "exit"
        @input = gets.strip
        case input
          when "Hayom yom"
           CLIPortfolioProject::CLI.hayom_yom(shiurim)
            puts "To continue learning please type in one of the above options. Otherwise, please type 'exit'. Thank you!"
          when "Rambam"
            #shiurim.find_by_text_study(input)
            CLIPortfolioProject::CLI.rambam(shiurim)
            puts "To continue learning please type in one of the above options. Otherwise, please type 'exit'. Thank you!"
          when "exit"
            puts "Goodbye, please come back tomorrow to learn more!"
          else
            puts "Sorry no such option yet."
        end
      end
    end    
  
  
  
   def self.hayom_yom(shiurim)
     puts "Hayom Yom:"
     shiurim.find_by_text_study("Hayom_yom").each do |output|
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
  
   def self.rambam(shiurim)
     puts "Daily Mitzvah:" 

     shiurim.find_by_text_study("Rambam").each do |output|
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
          shiurim.find_by_text_study("Rambam").each do |output|
         puts "#{output.full_text}"
         end
       end
    end
   
end