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
    #job of this method is to scrape the above attributes of hayom yom(perhaps giving option if to see credits or not etc.)
    #to-do:build out hayom_yom with all its attributes
    #the below is to simply scrape the text of the hayom yom in another place
    CLIPortfolioProject::Daily_Studies_Scrape.hayom_yom_scrape
  end
  
 def self.rambam
   #see above by hayom yom
    CLIPortfolioProject::Daily_Studies_Scrape.rambam_scrape
  end

end



