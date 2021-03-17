class BabyItems::Scraper

  def self.scrape_baby_items
    @doc = Nokogiri::HTML(open("https://www.babylist.com/hello-baby/best-baby-products"))
      index_page = @doc.css(".product-section").each do |card|
    # @doc = Nokogiri::HTML(open("https://www.babylist.com/hello-baby/best-baby-products"))
    #   index_page = @doc.css(".product-description-container").each do |card|
    #
        name = card.css(".product-title.text-underline-fancy").text.strip
        price = card.css(".product-price.mtm.mbl.h6").children[0].text
        url = card.css("a")[0].attributes["href"].value
        stores = card.css(".offer-store").children.map {|store| store.text.strip}
        description = card.css(".mtl p").children[0].text.strip

        BabyItems::Item.new(name, price, url, stores, description)

      end
    end
  end

      #   item.name = card.css(".product-title.text-underline-fancy").text.strip
      #   item.price = card.css(".product-price.mtm.mbl.h6").children[0].text
      #   item.url = card.css("a")[0].attributes["href"].value
      #   item.stores << card.css(".offer-store").children.map {|store| store.text.strip}
        #
        # item_names = @doc.css(".product-title.text-underline-fancy")
        # item_names.map {|name| BabyItems::Item.new(name.text.strip)}







      # item = self.new
      # item.name = i.css(".product-title.text-underline-fancy").text
      # item.price = i.css(".product-price.mtm.mbl.h6").children[0].text
      # item.stores << i.css(".offer-store").children.map {|store| store.text.strip}
      # item.url = i.css("a")[0].attributes["href"].value
      # item



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
