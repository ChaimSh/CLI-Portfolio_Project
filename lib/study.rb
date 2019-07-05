class CLIPortfolioProject::Daily_Studies
   
   
   attr_accessor :name, :text, :credits, :full_text, :text_study, :hayom_yom, :rambam, :start, :scrape_all, :text_study, :find_by_text_study
    
      
   @@all = []
  
   def initialize()
     @@all << self
   end
  
   def self.all
     @@all
   end
   
   def find_by_text_study(text_study)
     @@all.select do |daily_study|
       daily_study.text_study == text_study
       end
    end
   
   
   def self.rambam
     rambam.text_study
     rambam.name 
     rambam.text
     rambam.credits
     rambam.full_text
   end   
   
  def self.hayom_yom
    hayom_yom.text_study
    hayom_yom.name
    hayom_yom.text
    hayom_yom.credits
  end
   
   
   
   
   
  # def self.scrape_all
  #   list_s = ['Hayom yom', 'Rambam']
     
  #   list_s.each do |s|
  #     self.scrape_shiur(s)
  #   end
  # end
   
   
#   def self.scrape_shiur(shiur_name)
#     if shiur_name == 'Hayom yom' 
#       self.hayom_yom = CLIPortfolioProject::Daily_Studies_Scrape.hayom_yom_scrape
      
#     elsif shiur_name == 'Rambam' 
#       self.rambam = CLIPortfolioProject::Daily_Studies_Scrape.rambam_scrape
#     end
   
# end
 
 

  
end



# - add hayom_yom and rambam as attributes to a Daily Study object
#  - add class methods that return just hayom_yom or rambam objects


