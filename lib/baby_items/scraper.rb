class BabyItems::Scraper

  def self.scrape_baby_items
    doc = Nokogiri::HTML(open("https://www.babylist.com/hello-baby/best-baby-products"))
      index_page = doc.css(".product-section").each do |card|

        name = card.css(".product-title.text-underline-fancy").text.strip
        price = card.css(".product-price.mtm.mbl.h6").children[0].text
        url = card.css("a")[0].attributes["href"].value
        stores = card.css(".offer-store").children.map {|store| store.text.strip}
        description = card.css(".mtl p").children.text.strip

        # BabyItems::Item.new(name, price, url, stores, description)
        item = BabyItems::Item.new
        item.name = name
        item.price = price
        item.url = url
        item.stores = stores
        item.description = description
        item.save

      end
    end
  end
