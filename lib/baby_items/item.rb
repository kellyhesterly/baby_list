class BabyItems::Item
  attr_accessor :name, :price, :description, :stores, :url

  @@all = []

  def initialize(name)
    @name = name
    @price = price
    @description = description
    @stores = []
    @url
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

  # def add_store(store)
  #   @stores << store
  #   store.item = self
  # end

  def self.all
    BabyItems::Scraper.scrape_baby_items
    #calls the scraper class method to scrape all baby item products from website
  end

  def self.individual_item
    BabyItems::Scraper.scrape_item_details(self)
  end

end
