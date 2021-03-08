class BabyItems::Scraper

  def self.scrape_baby_items
    doc = Nokogiri::HTML(open("https://www.babylist.com/hello-baby/best-baby-products"))

    items = doc.css(".product-title.text-underline-fancy")
    items.each.with_index(1) {|item, index| puts "#{index}. #{item.text.strip}"}

    # sort_categories = doc.css(".mtl p").children.text
    # sort_categories.map do |item|
    #   if sort_categories.include?("bottles" || "breast" || "nursing")
    #       << item
    #
    # # binding.pry
    #   end
    # end
  end
end


# items = doc.css(".product-description-container").children.css("a")
#   items.map {|item| puts item.attr("name")}
