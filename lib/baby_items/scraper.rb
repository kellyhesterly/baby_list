class BabyItems::Scraper

  def self.scrape_baby_items
    #Go to Babylist website, find the items
    #If item has a certain description, sort item in one of seven categories
    doc = Nokogiri::HTML(open("https://www.babylist.com/hello-baby/best-baby-products"))

    item_names = doc.css(".product-title.text-underline-fancy")
    item_names.each.with_index(1) {|item, index| puts "#{index}. #{item.text.strip}"}
  end

  # def self.scrape_baby_item_details
  #   #When item is called on, scrape the properties
  #   item = BabyItems::Item.new
  #   item.name =
  #   item.price =
  #   item.description =
  #   item.stores =
  #   item.specs =
  #   item.category =
  # end
end




# items = doc.css(".product-description-container").children.css("a")
#   items.map {|item| puts item.attr("name")}

# sort_by_categories = doc.css(".mtl").children.css("p")
# sort_by_categories.map do |item|
#   if item.text.include?("bottles" || "breast" || "nursing")
