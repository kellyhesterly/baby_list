class BabyItems::Item
  attr_accessor :name, :price, :description, :stores, :specs, :category

  @@all = []

  def initialize(name)
    @name = name
    @price = price
    @description = description
    @stores = stores
    @specs = specs
    @category = category
    save
  end

  def save
    @@all << self
  end

  def self.all
    BabyItems::Scraper.scrape_baby_items if @@all.empty?
    @@all
  end
end
