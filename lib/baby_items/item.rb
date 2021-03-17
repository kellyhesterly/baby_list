class BabyItems::Item
  attr_accessor :name, :price, :description, :stores, :url

  @@all = []

  def initialize(name, price, url, stores)
    @name = name
    @price = price
    @description = description
    @stores = stores
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
    BabyItems::Scraper.scrape_baby_items if @@all.empty?
    @@all
    #calls the scraper class method to scrape all baby item products from website
  end

  def self.find(id)
    self.all[id-1]
  end



end
