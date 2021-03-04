class BabyItems::Scraper

  def scrape_baby_items
    doc = Nokogiri::HTML(open("https://www.babylist.com/hello-baby/best-baby-products"))
    binding.pry
  end
end
