class CLIPortfolioProject::CLI
  
  attr_accessor :input, :find_by_text_study
  
    def call
     
      
      puts "Hi! What would you like to learn today?"
      puts "Please type one of the following: Hayom yom, Rambam or type 'exit'"
       #shiurim = CLIPortfolioProject::Daily_Studies.new
      # shiurim.scrape_all
        @input = nil
        while @input != "exit"
        @input = gets.strip
        case input
          when "Hayom yom"
           CLIPortfolioProject::CLI.hayom_yom
           #puts shiurim.find_by_text_study(input)
            puts "To continue learning please type in one of the above options. Otherwise, please type 'exit'. Thank you!"
          when "Rambam"
            #shiurim.find_by_text_study(input)
            CLIPortfolioProject::CLI.rambam
            puts "To continue learning please type in one of the above options. Otherwise, please type 'exit'. Thank you!"
          when "exit"
            puts "Goodbye, please come back tomorrow to learn more!"
          else
            puts "Sorry no such option yet."
        end
      end
    end    
  
    
  # def self.hayom_yom
  #   puts "Hayom Yom:"
  #   hayom_yom = CLIPortfolioProject::Daily_Studies_Scrape.hayom_yom_scrape
  #   puts hayom_yom.name
  #   puts "            "
  #   puts hayom_yom.text
  #   puts "            "
  #   puts "------------------------------"
  #   puts hayom_yom.credits
  #   puts "               "
  #   puts "               "
  #               #hayom_yoms.each do |output|
  #               # puts "#{output.name}"
  #               # puts "               "
  #               # puts "#{output.text}"
  #               # puts "-------------------------"
  #               # puts " "
  #               # puts "Credits:"
  #               # puts "#{output.credits}"
  #               # puts "                          "
  #               # puts "                         "
  #               # end
  # end
  
  
  def self.hayom_yom
  hayom_yom = CLIPortfolioProject::Daily_Studies.find_by_text_study(@input).each do |output|
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
  
 def self.rambam
   puts "Daily Mitzvah:" 
    rambam = CLIPortfolioProject::Daily_Studies_Scrape.rambam_scrape
    puts rambam.name
    puts "            "
    puts rambam.text
    puts "            "
    puts "------------------------------"
    puts rambam.credits
    puts "               "
    puts "               "
    # rambams.each do |output|
    # puts "#{output.name}"
    # puts "                  "
    # puts "#{output.text}"
    # puts "-----------------------------"
    # puts " "
    # puts "Credits:"
    # puts "#{output.credits}"
    # puts "                              "
    # puts "                              "
     puts "If you would like to see the unabridged version of the Mitzvah please type 'y'. Otherwise please type in anything. Thank you!"
     input = gets.strip
     if input == "y"
       puts rambam.full_text
       
     end
    
  end
   
end