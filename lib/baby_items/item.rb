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

  def self.find(id)
    self.all[id - 1]
  end
  # def self.category
  #   BabyItems::Scraper.scrape_baby_items if BabyItems::Category.all[0]
  #   # binding.pry
  #   item_1 = self.new
  #   item_1.name = "Stroller"
  #   item_1.price = "$110.00"
  #   item_1.description = "This stroller is perfect for strolling with your baby"
  #   item_1.stores = "Available at Target and Amazon"
  #   item_1.specs = "This stroller is 54in. tall and 36in. wide"
  #   item_1.category = "Transportation"
  #
  #   item_2 = self.new
  #   item_2.name = "Crib"
  #   item_2.price = "$300.00"
  #   item_2.description = "This crib gurantees a perfect night sleep for baby"
  #   item_2.stores = "Available at BuyBuy Baby and Walmart"
  #   item_2.specs = "This crib is 5 feet long and 3 feet wide"
  #   item_2.category = "Sleep"
  # end
end
