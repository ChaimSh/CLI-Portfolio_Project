class CLIPortfolioProject::Daily_Studies
  
 attr_accessor :name, :credits, :text, :full_text
  
  @@all = []
  
 def initialize(name, credits, text)
  @name = name
  @credits = credits
  @text = text
  @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.hayom_yom
    puts "Hayom Yom:"
    hayom_yoms = CLIPortfolioProject::Daily_Studies_Scrape.hayom_yom_array
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



