class CLIPortfolioProject::Daily_Studies
   
   
   attr_accessor  :hayom_yom, :rambam, :start, :scrape_all, :find_by_text_study
    
      
   @@all = []
  
   def initialize()
     
     @@all << self
   end
  
   def self.all
     @@all
   end
   
   def self.find_by_text_study(text_study)
     all.select do |daily_study|
       daily_study.text_study == text_study
     end
   end
   
   def self.scrape_all
     list_s = ['Hayom yom', 'Rambam']
     
     list_s.each do |s|
      self.scrape_shiur(s)
    
   end
   
   
   def self.scrape_shiur(shiur_name)
    if shiur_name == 'Hayom yom' 
      self.hayom_yom = CLIPortfolioProject::Daily_Studies_Scrape.hayom_yom_scrape
      
    elsif shiur_name == 'Rambam' 
      self.rambam = CLIPortfolioProject::Daily_Studies_Scrape.rambam_scrape
    end
   
 end
 
 

  
end
end




# - add hayom_yom and rambam as attributes to a Daily Study object
#  - add class methods that return just hayom_yom or rambam objects


