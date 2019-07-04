class CLIPortfolioProject::Daily_Study_Prati

   
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
   
end