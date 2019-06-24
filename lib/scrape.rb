class CLIPortfolioProject::Daily_Studies_Scrape
  
    attr_accessor :name, :credits, :text
  

  def self.hayom_yom_array
  hayom_yom_array = []
  hayom_yom_array << hayom_yom_scrape
  hayom_yom_array
  end
  
   def self.rambam_array
  rambam_array = []
  rambam_array << rambam_scrape
  rambam_array
  end
  
  
  
  def self.rambam_scrape
    doc = Nokogiri::HTML(open("https://www.chabad.org/dailystudy/seferHamitzvos.asp?"))
    
    rambam = self.new
    rambam.name = doc.search("h3.article-header__subtitle").text
    rambam.text = doc.css("div.co_body p").text
    rambam.credits = doc.search("div.credits").text
    rambam
  end
  
  
  
  def self.hayom_yom_scrape
    doc = Nokogiri::HTML(open("https://www.chabad.org/dailystudy/hayomyom.asp?"))
    
    hayom_yom = self.new
    hayom_yom.name = doc.search("tr.hayom-yom-date").first.text
    hayom_yom.text = doc.css("div.co_body p").first.text
    hayom_yom.credits = doc.search("div.credit_text_item").text
    hayom_yom
  end
  
  

  
  
  
  
  
  
  
  
end