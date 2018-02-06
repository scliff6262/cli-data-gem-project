require "pry"

class CLI

  def run
    puts "Welcome to CLI Wine Guide!"
    #@wine_list = Wine.create_wine_obj
    section_menu
    section_selector
    wine_profile(Wine.all,wine_selector)
    another_wine
  end

  def section_menu
    puts "1. 1-10"
    puts "2. 11-20"
    puts "3. 21-30"
    puts "4. 31-40"
    puts "5. 41-50"
    puts "6. 51-60"
    puts "7. 61-70"
    puts "8. 71-80"
    puts "9. 81-90"
    puts "10. 91-100"
  end

  def section_selector#(ranked_wine)

    user_input = ""
    puts "Select a number (1-10) for which section of the 'Top 100 Wines' that you would like to view, or select type 'end' to exit."
      user_input = gets.chomp
      if user_input.to_i >= 1 && user_input.to_i <= 10
        counter = 9
        while counter >= 0
          current_rank = (user_input.to_i * 10 - counter)
          puts "#{current_rank}. #{list_wine_name(current_rank)}"
          counter -= 1
        end
      elsif user_input.downcase == "end"
        thank_you
      else
        puts "Invalid entry, try again."
        section_selector
    end
  end

  def list_wine_name(current_rank)
    wine_obj_to_list = Wine.all.detect {|wine_obj| wine_obj.rank == current_rank}
    wine_obj_to_list.name unless wine_obj_to_list == nil
  end

  def wine_selector
    puts "Select the wine's ranking to learn more:"
    user_input = gets.chomp.to_i
    case user_input
    when 1..100
      user_input.to_i
    else
      puts "Invalid entry. Must be a number between 1-100."
      wine_selector
    end
  end

  def wine_profile(wine_objects, wine_rank)
    #selected_wine = nil
    #wine_objects.find {|wine| selected_wine = wine if wine.rank == wine_rank}
    puts "#{wine_rank}. Chateau Milon "
    puts "\nAbout:
    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
    Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
    sunt in culpa qui officia deserunt mollit anim id est laborum."
    puts "\nVintage: 2014"
    puts "Price: $100"
    puts "Wine Spectator Score: 98"
  end

  def another_wine
    #Time.new
    puts "Would you like to view another wine? (y/n)"
    user_input = gets.chomp
    if user_input.downcase == "y"
      run
    elsif user_input.downcase == "n"
      thank_you
    else
      puts "Invalid entry."
      another_wine
    end
  end


  def thank_you
    puts "Thanks for using our Wine Guide. See you soon!"
    abort
  end


end
