class BabyItems::CLI

  def call
    puts "\nWelcome to the top-rated baby items list!\n"
    categories
    list_categories
    selected_category
    get_items
        #scrape_baby_items for selected (category)
  end

  def categories
    @categories = BabyItems::Category.all
  end

  def list_categories
    puts "\nPlease select the category you wish to see by selecting the accompany number.\n"
    puts ""
    @categories.each.with_index(1) {|category, index| puts "#{index}. #{category}"}
  end

  def selected_category
    input = gets.strip.to_i
      if input_valid?(input, categories)
        puts "\nYou selected #{@categories[input - 1]}.\n"
        puts ""
      else
        puts "I'm sorry, please select a number on the list."
        selected_category
    end
  end

  def input_valid?(input, data)
    input.to_i <= data.length && input.to_i > 0
  end

  def get_items
    @items = BabyItems::Item.all
    input = gets.strip.to_i
    # case input 
    # when "1"
    #   #list items that fall under "Nursing & Feeding" category
    # when "2"
    #   #list items that fall under "Lounging" category
    # when "3"
    #   #list items that fall under "Hygiene & Health" category
    # when "4"
    #   #list items that fall under "Transportation" category
    # when "5"
    #   #list items that fall under "Sleep" category
    # when "6"
    #   #list items that fall under "Diaper Changing" category
    # when "7"
    #   #list items that fall under "Play" category
    # end
  end

  # def show_baby_items_for(chosen_category)
  #   category = @categories[chosen_category]
  #   puts "Here are items for #{category}"
  # end

end
