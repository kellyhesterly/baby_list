class BabyItems::CLI

  def call
    puts "Welcome to the top-rated baby items list! Please select the category you wish to see."
    get_categories
    get_user_category
    #get_category
    #scrape_baby_items for selected (category)
  end

  def get_categories
    @categories = ["Nursing & Feeding", "Lounging", "Hygiene & Health", "Transportation", "Sleep", "Diaper Changing", "Play"]
  end

  def get_user_category
    @categories.each.with_index(1) {|category, index| puts "#{index}. #{category}" }
  end
end
