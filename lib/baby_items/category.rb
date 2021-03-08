class BabyItems::Category
  attr_accessor :name
  
  @@all = ["Nursing & Feeding", "Lounging", "Hygiene & Health", "Transportation", "Sleep", "Diaper Changing", "Play"]

  def initialize
    @name = name
  end

  def self.all
    @@all
  end
end
