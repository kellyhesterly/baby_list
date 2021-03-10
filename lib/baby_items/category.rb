class BabyItems::Category
  attr_accessor :name, :items

  @@all = ["🍼  Nursing & Feeding", "🚼  Lounging", "🏥  Health & Safety", "🚙  Transportation", "🌙  Sleep", "💩  Diaper Changing", "🎭  Play"]

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
  end
end
