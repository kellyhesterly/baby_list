class BabyItems::Scraper

  def self.scrape_baby_items
    doc = Nokogiri::HTML(open("https://www.babylist.com/hello-baby/best-baby-products"))
      index_page = doc.css(".product-section").each do |card|

        name = card.css(".product-title.text-underline-fancy").text.strip
        price = card.css(".product-price.mtm.mbl.h6").children[0].text
        url = card.css("a")[0].attributes["href"].value
        stores = card.css(".offer-store").children.map {|store| store.text.strip}
        description = card.css(".mtl p").children.text.strip
        # description = card.css(".mtl p").children[0].text.strip
        # binding.pry

        BabyItems::Item.new(name, price, url, stores, description)

      end
    end
  end
