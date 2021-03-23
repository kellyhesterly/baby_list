class BabyItems::CLI

  def call
    puts "       ________________________________________________   "
    puts "\n       ⭐️  Welcome to the top-rated Baby Items list! ⭐️   \n".light_blue
    puts "       ________________________________________________   "
    puts ""
    list_items
    get_user_input
  end

  def list_items
    @items = BabyItems::Item.all
    @items.each.with_index(1) {|item, index| puts "#{index}. #{item.name}".cyan}
  end


  def get_user_input
    puts "\nPlease select the item you wish to see by selecting the accompany number.\n"
    puts ""

    input = gets.strip.to_i

    if valid_input?(input, @items)
      puts "\nYou selected:"
      puts ""
    else
      puts "\nI'm sorry, please select a number on the list\n"
      get_user_input
    end

      item = BabyItems::Item.find(input.to_i)
      print_item(item)

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
       puts""
       list_items
       get_user_input
     end
  end

  def valid_input?(input, data)
    input.to_i <= data.length && input.to_i > 0
  end

  def print_item(item)
    puts "⭐️  #{item.name} ⭐️ ".light_blue
    puts""
    puts "_______________________________"
    puts "\n        Description    \n".light_green
    puts "_______________________________  "
    puts "\n#{item.description}\n".cyan
    puts "_______________________________"
    puts "\nPrice: #{item.price}\n".green
    puts "Available at:".light_yellow
    puts ""
    item.stores.each.with_index(1) {|store, index| puts "#{index}. #{store}".light_magenta}
    puts "_______________________________"
    puts "\nWebsite: #{item.url}\n".light_blue.underline
  end

end
