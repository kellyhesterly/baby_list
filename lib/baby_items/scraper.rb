class BabyItems::Scraper

  def self.scrape_baby_items
    @doc = Nokogiri::HTML(open("https://www.babylist.com/hello-baby/best-baby-products"))
    item_names = @doc.css(".product-title.text-underline-fancy")
    item_names.map {|name| BabyItems::Item.new(name.text.strip)}
    #scrapes the name of each baby item
  end

  # def self.scrape_item_details(item)
  #   deal_1 = self.new
  #   deal_1.name = "Uppababy Stroller"
  #   deal_1.price = "$1000"
  #   deal_1.stores = "Target", "Amazon", "Buy Buy Baby"
  #   deal_1.description = "The best stroller in the world is amazing"
  #   deal_1.url = "http://www.babylist.com"
  #
  #   deal_2 = self.new
  #   deal_2.name = "NoseFrida"
  #   deal_2.price = "$15.00"
  #   deal_2.stores = "Walmart"
  #   deal_2.description = "Removes boogers from sucking the snot out of your baby's nose"
  #   deal_2.url = "http://www.babylist.com"
  #
  #   [deal_1, deal_2]
    # index_page = @doc.css(".product-section").each do |card|
    #  card.css(".product-description-container").each do |i|
    #
    #      item.name = i.css(".product-title.text-underline-fancy").text
    #      item.price = i.css(".product-price.mtm.mbl.h6").children[0].text
    #      item.stores << i.css(".offer-store").children.map {|store| store.text.strip}
    #      item.url = i.css("a")[0].attributes["href"].value
    #
      #   end
      # end
    # end


  end
    #     item.name << item.css(".product-title.text-underline-fancy").text
      # store = item.css(".offer-store").children.map {|store| store.text.strip}
      # price = item.css(".product-price.mtm.mbl.h6").children.map {|price| price.text}
      #   item.stores << store
      #   item.price << price

        # store = item.css(".offer-store").children.each.with_index(1) {|store, index| puts "#{index}. #{store.text.strip}"}
        # price = item.css(".product-price.mtm.mbl.h6").children.each {|price| puts "#{price.text}"}

    # index_page_desc = @doc.css(".mtl").each do |children|
    #   children.css("p").each do |desc|
    #       item_desc = desc.children.each {|description| puts "\n#{description.text.strip}\n"}




  # def self.scrape_baby_item_details
  #   doc = Nokogiri::HTML(open("https://www.babylist.com/hello-baby/best-baby-products"))
  #   array_of_item_links = doc.css(".product-description-container a").map {|el| el.attribute('href').value}


# items = doc.css(".product-description-container").children.css("a")
#   items.map {|item| puts item.attr("name")}

# sort_by_categories = doc.css(".mtl").children.css("p")
# sort_by_categories.map do |item|
#   if item.text.include?("bottles" || "breast" || "nursing")

# item_descriptions = doc.css(".mtl").children.css("p")
#
# item_descriptions.map do |description|
#   if description.text.include?("bottles" || "breast" || "nursing")
#     nursing_and_feeding <<
#     end

  # items = []
  # doc.css(".product-section").each do |card|
  #   card.css(".product-title.text-underline-fancy").each do |name|
  #     item_name = name.text.strip
  #     items << item_name
  #   end
  # end
  # items.each.with_index(1) {|item, index| puts "#{index}. #{item}"}
  #
  # item_desc = []
  # doc.css(".mtl").each do |card|
  #   card.css("p").each do |description|
  #     item_description = description.text.strip
  #     item_desc << item_description
  #   end
  # end
  # item_desc.each.with_index(1) {|desc, index| puts "#{index}. #{desc}"}
