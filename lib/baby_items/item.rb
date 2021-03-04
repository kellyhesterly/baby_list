class BabyItems::Item
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
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
