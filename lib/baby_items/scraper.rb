class BabyItems::Scraper

  def self.scrape_baby_items
    doc = Nokogiri::HTML(open("https://www.babylist.com/hello-baby/best-baby-products"))
    items = doc.css(".product-description-container").children.css("a")
      items.map {|item| puts item.attr("name")}
  end
end
