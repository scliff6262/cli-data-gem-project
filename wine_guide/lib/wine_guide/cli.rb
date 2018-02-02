class WineGuide::CLI

  def run
    puts "Welcome to CLI Wine Guide!"
    section_menu
    section_selector
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
    while user_input.downcase != "end"
      puts "Select a number (1-10) for which section of the 'Top 100 Wines' that you would like to view, or select type 'end' to exit."
      user_input = gets.chomp
        if user_input == "1"
          puts "Montepeloso a Quo"
          ###### rankings (user_input * 10 - 9) -- (user_input * 10)
          #ranked_wine.all.each_with_index{|wine_obj| puts "#{wine_obj.rank}. #{wine_obj.name}" if wine_obj.rank <= 10}
        elsif user_input == "2"
          puts "Stag's Leap"
        else puts "Invalid entry, try again."
      end
    end
  end

  def wine_selector
    puts "Select the wine's ranking to learn more:"
    user_input = gets.chomp.to_i
  end

end
