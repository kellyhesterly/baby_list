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

  def self.individual_item
    deal_1 = self.new
    deal_1.name = "Uppababy Stroller"
    deal_1.price = "$1000"
    deal_1.stores = "Target", "Amazon", "Buy Buy Baby"
    deal_1.description = "The best stroller in the world is amazing"
    deal_1.url = "http://www.babylist.com"

    deal_2 = self.new
    deal_2.name = "NoseFrida"
    deal_2.price = "$15.00"
    deal_2.stores = "Walmart"
    deal_2.description = "Removes boogers from sucking the snot out of your baby's nose"
    deal_2.url = "http://www.babylist.com"


    # BabyItems::Scraper.scrape_item_details(self)
    #calls the scraper class method to scrape baby item details of specific
  end

end
