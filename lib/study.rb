class CLIPortfolioProject::Daily_Studies
   
   
   attr_accessor :name, :text, :credits, :full_text, :text_study, :hayom_yom, :rambam, :find_by_text_study
    
      
   @@all = []
  
   def initialize()
     @name = name
     @text = text 
     @credits = credits
     @full_text = full_text
     @@all << self
   end
  
   def self.all
     @@all
   end
   
   def self.array_load
     CLIPortfolioProject::Daily_Studies_Scrape.rambam_scrape 
     CLIPortfolioProject::Daily_Studies_Scrape.hayom_yom_scrape
  end
   
   def self.find_by_text_study(text_study)
     @@all.find do |daily_study|
       daily_study.text_study == text_study
       end
    end
  
end



