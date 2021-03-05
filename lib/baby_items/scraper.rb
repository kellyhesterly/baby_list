class BabyItems::Scraper

  def self.scrape_baby_items
    doc = Nokogiri::HTML(open("https://www.babylist.com/hello-baby/best-baby-products"))
    items = doc.css(".product-description-container").children.css("a").attribute("name").value
    # items = doc.css(".product-title.text-underline-fancy").children.text.strip.split("\n")
    # item_list = items.each.with_index(1) {|item, index| puts "#{index}. #{item}"}
    binding.pry
    # items = doc.css(".product-title.text-underline-fancy")
    # items.map {|item| puts item.children.text.strip}
  end
end
