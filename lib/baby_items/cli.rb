class BabyItems::CLI

  def call
    puts "\nWelcome to the top-rated baby items list!\n"
    categories
    list_categories
    selected_category
    get_items
    #get_category
    #scrape_baby_items for selected (category)
  end

  def categories
    @categories = ["Nursing & Feeding", "Lounging", "Hygiene & Health", "Transportation", "Sleep", "Diaper Changing", "Play"]
  end

  def list_categories
    puts "\nPlease select the category you wish to see by selecting the accompany number.\n"
    puts ""
    @categories.each.with_index(1) {|category, index| puts "#{index}. #{category}"}
  end

  def get_items
    @items = BabyItems::Item.all
  end

  def selected_category
    input = gets.strip.to_i - 1
      if input_valid?(input, categories)
        puts "\nYou selected #{@categories[input]}.\n"
        puts ""
        # get_items
        # @items.each.with_index(1) {|item, index| puts "#{index}. #{item.name}"}
        #show_baby_items_for(user_category)
      else
        puts "I'm sorry, please select a number on the list."
        selected_category
    end
  end

  def input_valid?(input, data)
    input.to_i <= data.length && input.to_i > 0
  end

  def show_baby_items_for(chosen_category)
    category = @categories[chosen_category]
    puts "Here are items for #{category}"
  end

end
