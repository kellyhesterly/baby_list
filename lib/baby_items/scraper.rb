class BabyItems::Scraper

  def self.scrape_baby_items
    doc = Nokogiri::HTML(open("https://www.babylist.com/hello-baby/best-baby-products"))

    item_names = doc.css(".product-title.text-underline-fancy")
    item_names.each.with_index(1) {|item, index| puts "#{index}. #{item.text.strip}"}
  end

end




# items = doc.css(".product-description-container").children.css("a")
#   items.map {|item| puts item.attr("name")}

# sort_by_categories = doc.css(".mtl").children.css("p")
# sort_by_categories.map do |item|
#   if item.text.include?("bottles" || "breast" || "nursing")
