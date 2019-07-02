class CLIPortfolioProject::Daily_Studies_Scrape
  
  
  def self.rambam_scrape
    doc = Nokogiri::HTML(open("https://www.chabad.org/dailystudy/seferHamitzvos.asp?"))
    
    rambam = CLIPortfolioProject::Daily_Studies.new
    rambam.name = doc.search("h3.article-header__subtitle").text
    rambam.text = doc.css("div.co_body.article-body.cf p").first.text
    rambam.credits = doc.search("div.credits").text
    rambam.text_study = "Rambam"
    rambam.full_text = doc.search("div.co_body.article-body").text.strip
    rambam
  end
  
  
  
  def self.hayom_yom_scrape
    doc = Nokogiri::HTML(open("https://www.chabad.org/dailystudy/hayomyom.asp?"))
    
    hayom_yom = CLIPortfolioProject::Daily_Studies.new
    hayom_yom.name = doc.search("tr.hayom-yom-date").first.text
    hayom_yom.text = doc.css("div.co_body p").first.text
    hayom_yom.credits = doc.search("div.credit_text_item").text
    hayom_yom.text_study = "Hayom_yom"
    hayom_yom
    
  end
  
  
  
  
  
  
  
  
  
  
end