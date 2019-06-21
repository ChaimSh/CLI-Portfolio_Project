class CLIPortfolioProject::Daily_Studies
  
  attr_accessor :name, :credits, :book_url, :book_desc
  
  @@all = []
  
  def initialize(name, credits, book_uri, book_desc)
  @name = name
  @credits = credits
  @book_uri = book_uri
  @book_desc = book_desc
  @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.hayom_yom
    #job of htis method is to scrape the above attributes of hayom yom(perhaps giving option if to see credits or not etc.)
    #to-do:build out hayom_yom with all its attributes
    #the below is to simply scrape the text of the hayom yom in another place
    CLIPortfolioProject::Daily_Studies_Scrape.hayom_yom
  end
  
 def self.rambam
   #see above by hayom yom
    CLIPortfolioProject::Daily_Studies_Scrape.rambam
  end

end



