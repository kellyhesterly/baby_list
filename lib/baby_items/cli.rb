class BabyItems::CLI

  def call
    puts "\nWelcome to the top-rated baby items list!\n"
    categories
    list_categories
    get_user_category
    #get_category
    #scrape_baby_items for selected (category)
  end

  def categories
    @categories = ["Nursing & Feeding", "Lounging", "Hygiene & Health", "Transportation", "Sleep", "Diaper Changing", "Play"]
  end

  def list_categories
    puts "\nPlease select the category you wish to see by selecting the accompany number.\n"
    @categories.each.with_index(1) {|category, index| puts "#{index}. #{category}" }
  end

  def get_user_category
    chosen_category = gets.strip
  end

end
