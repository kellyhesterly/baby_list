class BabyItems::Scraper

  def self.scrape_baby_items
    doc = Nokogiri::HTML(open("https://www.babylist.com/hello-baby/best-baby-products"))
    items = doc.css(".product-title.text-underline-fancy")
    items.each {|item| puts item.children.text.strip}
  end
end
