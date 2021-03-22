class BabyItems::Item
  attr_accessor :name, :price, :description, :stores, :url

  @@all = []

  # def initialize(name, price, url, stores, description)
  #   @name = name
  #   @price = price
  #   @description = description
  #   @stores = stores
  #   @url = url
  #   save
  # end

  def save
    @@all << self
  end

  def self.all
    BabyItems::Scraper.scrape_baby_items if @@all.empty?
    @@all
  end

  def self.find(id)
    @@all[id-1]
  end

end
