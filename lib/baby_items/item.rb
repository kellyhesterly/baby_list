class BabyItems::Item
  attr_accessor :name, :price, :description, :stores, :url

  @@all = []

  def initialize(name)
    @name = name
    @price = price
    @description = description
    @stores = []
    @url = url
    save
  end

  # def initialize(att_hash)
  # #   @name = att_hash[:name]
  # #   @price = att_hash[:price]
  # #   @description = att_hash[:description]
  # #
  #   att_hash.each do |key, value|
  #     self.send("#{key}=", value)
  #   end
  #   @stores = []
  #   save
  # end

  def save
    @@all << self
  end

  def self.all
    BabyItems::Scraper.scrape_baby_items
    #calls the scraper class method to scrape all baby item products from website
  end

  def self.find(id)
    self.all[id-1]
  end

  def self.individual_item
    item = self.new
    item.name = "Uppababy Stroller"
    item.price = "$1000"
    item.stores = "Target", "Amazon", "Buy Buy Baby"
    item.description = "The best stroller in the world is amazing"
    item.url = "http://www.babylist.com"

  item
    # BabyItems::Scraper.scrape_item_details(self)
    #calls the scraper class method to scrape baby item details of specific
  end

def self.item_details
  item_details = []
  item_details << self.individual_item
  item_details
end

end
