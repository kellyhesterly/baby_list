class BabyItems::CLI

  def call
    puts "\n        ✯ Welcome to the top-rated baby items list! ✯   \n"
    puts "       _______________________________________________   "
    categories
    list_categories
    selected_category
    items
    list_items
    select_item
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

  def items
    @items = BabyItems::Item.all
  end

  def list_items
    # input = gets.strip.to_i
    # categories = input
    # case categories
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

  def select_item
    puts "\nSelect the item you wish to see in further detail by selecting the accompany number.\n"
    puts ""
    input = gets.strip.to_i

  #     # item = BabyItems::Item.find(input)
  #
  #     # if input_valid?(input, items)
  #     #   print_item(item)
  #     # else
  #     #   puts "I'm sorry, please select a number on the list."
  #     #   select_item
  #     # end
  #
  # #   puts "\nWould you like to view more items? Please type 'Y' or 'N'.\n"
  # #   input = gets.strip.upcase
  # #   if input == "Y"
  # #     puts "Taking you back to the category list."
  # #     list_categories
  # #   elsif input == "N"
  # #     puts "\nThank you for stopping by! Have a wonderful day!\n"
  # #     exit
  # #   else
  # #     "\nI'm sorry, I didn't quite understand that answer. Let me bring you back to the main menu.\n"
  # #     list_categories
  # #   end
  end

  def print_item(item)
    puts "\n        #{item.name}        \n"
    puts "\nPrice: $#{item.price}\n"
    puts "Available at: #{item.stores}"

    puts "\n        Description         \n"
    puts "\n#{item.description}\n"
    puts ""

    puts "\n          Specs             \n"
    puts "\n#{item.specs}\n"
    puts ""
  end

  # def show_baby_items_for(chosen_category)
  #   category = @categories[chosen_category]
  #   puts "Here are items for #{category}"
  # end

end
