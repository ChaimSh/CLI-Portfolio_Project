class CLIPortfolioProject::Daily_Studies
  
 # attr_accessor :name, :credits, :text
  
 # @@all = []
  
 # def initialize(name, credits, text)
  #@name = name
  #@credits = credits
  #@text = text
  #@@all << self
  #end
  
  #def self.all
   # @@all
  #end
  
  def self.hayom_yom
    puts "Hayom Yom:"
    hayom_yoms = CLIPortfolioProject::Daily_Studies_Scrape.hayom_yom_array
    hayom_yoms.each do |output|
     puts "#{output.name}"
     puts "#{output.text}"
     puts "#{output.credits}"
    end
  end
  
 def self.rambam
   puts "Daily Mitzvah:" 
    rambams = CLIPortfolioProject::Daily_Studies_Scrape.rambam_array
    rambams.each do |output|
     puts "#{output.name}"
     puts "#{output.text}"
     puts "#{output.credits}"
    end
  end

end



