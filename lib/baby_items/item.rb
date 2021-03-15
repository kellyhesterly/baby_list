class BabyItems::Item
  attr_accessor :name, :price, :description, :stores

  @@all = []

  def initialize(name)
    @name = name
    @price = price
    @description = description
    @stores = stores
    save
  end

  def save
    @@all << self
  end

  def self.all
    BabyItems::Scraper.scrape_baby_items
  end

  def self.individual_item
    BabyItems::Scraper.baby_item_details
  end

  def self.find(id)
    @@all[id.to_i - 1]
  end

end
