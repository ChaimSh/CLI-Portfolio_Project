class CLIPortfolioProject::Daily_Studies
  
  attr_accessor :name, :credits, :text
  
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
    hayom_yoms = CLIPortfolioProject::Daily_Studies_Scrape.hayom_yom_scrape
    hayom_yoms.each do |output|
     puts "#{output.name}"
     puts "#{output.text}"
     puts "#{output.credits}"
    end
  end
  
 def self.rambam
   puts "Daily Mitzvah:" 
    CLIPortfolioProject::Daily_Studies_Scrape.rambam_scrape
  end

end



