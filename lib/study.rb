class CLIPortfolioProject::Daily_Studies
  
  attr_accessor :name, :credits, :book_url, :book_desc
  
  def initialize(name, credits, book_uri, book_desc )
  @name = name
  @credits = credits
  @book_uri = book_uri
  @book_desc = book_desc
  end
  
  def self.hayom_yom
    puts "hi"
  end
  
  
  
 def self.rambam
    puts "hi"
  end

end

#initialize
#loop
#@@all

