class BabyItems::Category
  attr_accessor :name, :items

  @@all = ["Nursing & Feeding", "Lounging", "Hygiene & Health", "Transportation", "Sleep", "Diaper Changing", "Play"]

  def initialize
    @name = name
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def items
    BabyItems::Item.all.select {|item| item.category == self}
    binding.pry
  end
end
