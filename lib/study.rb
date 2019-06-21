class CLIPortfolioProject::Daily_Studies
  
  attr_accessor :name, :credits, :book_url, :book_desc
  
  @@all = []
  
  def initialize(name, credits, book_uri, book_desc)
  @name = name
  @credits = credits
  @book_uri = book_uri
  @book_desc = book_desc
  end
  
  def self.hayom_yom
    CLIPortfolioProject::Daily_Studies_Scrape.hayom_yom
  end
  
 def self.rambam
    CLIPortfolioProject::Daily_Studies_Scrape.rmabam
  end

end



