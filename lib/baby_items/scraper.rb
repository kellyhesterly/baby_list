class BabyItems::Scraper

  def self.scrape_baby_items
    #Go to Babylist website, find the items
    #If item has a certain description, sort item in one of seven categories
    doc = Nokogiri::HTML(open("https://www.babylist.com/hello-baby/best-baby-products"))

    nursing_and_feeding = []
    lounging = []
    hygiene_and_health = []
    transportation = []
    sleeping = []
    diaper_changing = []
    play = []

    # item_names = doc.css(".product-title.text-underline-fancy")
    # item_names.each.with_index(1) {|item, index| puts "#{index}. #{item.text.strip}"}
        #this iteration gives me the list of all items from website

    # item_descriptions = doc.css(".mtl").children.css("p")
    #
    # item_descriptions.map do |description|
    #   if description.text.include?("bottles" || "breast" || "nursing")
    #     nursing_and_feeding <<
    #     end

      items = []
      doc.css(".product-section").each do |card|
        card.css(".product-title.text-underline-fancy").each do |name|
          item_name = name.text.strip
          items << item_name
        end
      end
      items.each.with_index(1) {|item, index| puts "#{index}. #{item}"}

      item_desc = []
      doc.css(".mtl").each do |card|
        card.css("p").each do |description|
          item_description = description.text.strip
          item_desc << item_description
        end
      end
      item_desc.each.with_index(1) {|desc, index| puts "#{index}. #{desc}"}

    
    # sort_by_categories = doc.css(".mtl").children.css("p")
    # item_descriptions.map do |description|
    #  if description.text.include?("bottles" || "breast" || "nursing")
    #    nursing_and_feeding <<
    #     end
    #  end
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
