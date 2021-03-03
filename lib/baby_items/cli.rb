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
    input = gets.strip.to_i
      if input_valid?(input, categories)
        puts "You selected #{@categories[input]}."
      else
        puts "I'm sorry, please select a number on the list."
        get_user_category
    end
  end

  def input_valid?(input, data)
    input <= data.length && input > 0
  end

end
