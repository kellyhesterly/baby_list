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
    @items = BabyItems::Item.all
    @items.each.with_index(1) {|item, index| puts "#{index}. #{item.name}"}
    puts "\nPlease select the item you wish to see by selecting the accompany number.\n"
    puts ""
  end

  def get_user_item
    input = gets.strip.to_i

    if valid_input?(input, @items)
      puts "\nYou selected #{@items[input - 1].name}\n"
    else
      puts "\nI'm sorry, please select a number on the list\n"
      get_user_item
    end
    print_item(input)

    puts "\nWould you like to view another item?  Please enter 'Y' or 'N'.\n"
     input = gets.strip.upcase
     if input == "Y"
       list_items
       get_user_item
     elsif input == "N"
       puts "\nThanks for stopping by!  Have a wonderful day!\n"
       exit
     else
       puts "\nI'm sorry, I didn't quite understand what you wanted.  Let me take you back to the list."
       list_items
       get_user_item
     end
  end

  def valid_input?(input, data)
    input.to_i <= data.length && input.to_i > 0
  end

  def print_item(item)
    @item = BabyItems::Item.individual_item
    # puts "       ________________________________________________   "
    # puts "\n                   ⭐️  #{item.name} ⭐️   \n"
    # puts "       ________________________________________________   "
    # puts "\nPrice: $#{item.price}\n"
    # puts "Available at: #{item.stores}"
    #
    # puts "       ________________________________________________   "
    # puts "\n                    ⭐️   Description ⭐️   \n"
    # puts "       ________________________________________________   "
    # puts "\n#{item.description}\n"
    # puts ""
    #
    # puts "       ________________________________________________   "
    # puts "\n                     ⭐️  Specs ⭐️   \n"
    # puts "       ________________________________________________   "
    # puts "\n#{item.specs}\n"
    # puts ""
  end

end
