class BabyItems::CLI

  def call
    puts "       ________________________________________________   "
    puts "\n       ⭐️  Welcome to the top-rated Baby Items list! ⭐️   \n"
    puts "       ________________________________________________   "
    puts ""
    list_items
    get_user_input
        #scrape_baby_items for selected (category)
  end

  def list_items
    @items = BabyItems::Item.all
      #a list of item objects
    @items.each.with_index(1) {|item, index| puts "#{index}. #{item.name}"}
    puts "\nPlease select the item you wish to see by selecting the accompany number.\n"
    puts ""
      #displays the name of all baby items in a numbered list
  end

  def get_user_input
    input = gets.strip.to_i
      #retrieves user's input and converts the input into an integer

    if valid_input?(input, @items)
      #calls upon method below
      puts "\nYou selected #{@items[input - 1].name}\n"
      puts ""
        #here I am taking the array of items, and subtracting the user input - 1 to display the baby item name selected
    else
      puts "\nI'm sorry, please select a number on the list\n"
      get_user_input
    end

      item = BabyItems::Item.find(input.to_i)
      print_item(item)
      #display item details that were selected


    puts "\nWould you like to view another item?  Please enter 'Y' or 'N'.\n"
     input = gets.strip.upcase
     if input == "Y"
       list_items
       get_user_input
     elsif input == "N"
       puts "\nThanks for stopping by!  Have a wonderful day!\n"
       exit
     else
       puts "\nI'm sorry, I didn't quite understand what you wanted.  Let me take you back to the list."
       list_items
       get_user_input
     end
  end

  def valid_input?(input, data)
    input.to_i <= data.length && input.to_i > 0
      #if the user input (convereted into an integer) is less than or equal to the length of the list provided, or input is greater than 0, than it is valid
  end

  def print_item(item)
    puts""
    puts "\n                   ⭐️  #{item.name} ⭐️   \n"
    puts""
    puts "       ________________________________________________   "
    puts "\n                      Description    \n"
    puts "       ________________________________________________   "
    puts "\n#{item.description}\n"
    puts ""
    puts "\nPrice: #{item.price}\n"
    puts "Available at:"
    puts ""
    item.stores.each.with_index(1) {|store, index| puts "#{index}. #{store}"}
    puts "\nWebsite: #{item.url}\n"
  end

end
