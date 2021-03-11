class BabyItems::CLI

  def call
    puts "       ________________________________________________   "
    puts "\n       ⭐️  Welcome to the top-rated Baby Items list! ⭐️   \n"
    puts "       ________________________________________________   "
    puts ""
    #get list_of_items
    #get details_of(item)
    list_items
    get_user_item
        #scrape_baby_items for selected (category)
  end

  def list_items
    # @items = ["Stroller", "Carrier", "Car Seat"]
    @items = BabyItems::Item.all
  end

  def get_user_item
    puts "\nPlease select the item you wish to see for further details by selecting the accompany number.\n"
    puts ""

    input = gets.strip.to_i

    if valid_input?(input, @items)
      puts "You selected #{@items[input - 1].text}"
    else
      puts "I'm sorry, please select a number on the list"
      get_user_item
    end
  end

  def valid_input?(input, data)
    input.to_i <= data.length && input.to_i > 0
  end






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
