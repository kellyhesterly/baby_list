class BabyItems::Scraper

  def self.scrape_baby_items
    doc = Nokogiri::HTML(open("https://www.babylist.com/hello-baby/best-baby-products"))

    items = doc.css(".product-title.text-underline-fancy")
    items.each.with_index(1) {|item, index| puts "#{index}. #{item.text.strip}"}
    # binding.pry
  end
end


# items = doc.css(".product-description-container").children.css("a")
#   items.map {|item| puts item.attr("name")}
