class CLIPortfolioProject::Daily_Studies
   
   
   attr_accessor :name, :credits, :text, :full_text, :text_study
    
      
   @@all = []
  
   def initialize(name=nil, credits=nil, text=nil, full_text=nil)
     @name = name
     @credits = credits
     @text = text
     @full_text = text
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
end

# - add hayom_yom and rambam as attributes to a Daily Study object
#  - add class methods that return just hayom_yom or rambam objects


