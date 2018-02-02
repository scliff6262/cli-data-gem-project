class WineGuide::CLI

  def begin
    puts "Welcome to CLI Wine Guide!"
  end

  def which_section?
    puts "Select a number below for which section of the 'Top 100 Wines' that you would like to view:"
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

  def section_selector
    user_input = gets.chomp.to_i
    while user_input.downcase != "exit"
      if user_input == 1
        wine.all.each_with_index{|wine_obj| puts "#{wine_obj.rank}. #{wine_obj.name}" if wine_obj.rank <= 10}
      elsif user_input == 2
          wine.all.each_with_index{|wine_obj| puts "#{wine_obj.rank}. #{wine_obj.name}" if wine_obj.rank == 11..20}
      elsif user_input == 3
          wine.all.each_with_index{|wine_obj| puts "#{wine_obj.rank}. #{wine_obj.name}" if wine_obj.rank == 21..30}
      elsif user_input == 4
          wine.all.each_with_index{|wine_obj| puts "#{wine_obj.rank}. #{wine_obj.name}" if wine_obj.rank == 31..40}
      elsif user_input == 5
          wine.all.each_with_index{|wine_obj| puts "#{wine_obj.rank}. #{wine_obj.name}" if wine_obj.rank == 41..50}
      elsif user_input == 6
          wine.all.each_with_index{|wine_obj| puts "#{wine_obj.rank}. #{wine_obj.name}" if wine_obj.rank == 51..60}
      elsif user_input == 7
          wine.all.each_with_index{|wine_obj| puts "#{wine_obj.rank}. #{wine_obj.name}" if wine_obj.rank == 61..70}
      elsif user_input == 8
          wine.all.each_with_index{|wine_obj| puts "#{wine_obj.rank}. #{wine_obj.name}" if wine_obj.rank == 71..80}
      elsif user_input == 9
          wine.all.each_with_index{|wine_obj| puts "#{wine_obj.rank}. #{wine_obj.name}" if wine_obj.rank == 81..90}
      elsif user_input == 10
          wine.all.each_with_index{|wine_obj| puts "#{wine_obj.rank}. #{wine_obj.name}" if wine_obj.rank == 91..100}
      elsif user_input.downcase == "exit"
        puts "Thanks for viewing our Wine Guide! Please come back soon."
      else puts "Please enter a number 1-10 or 'exit'"
      end
  end

  def wine_selector

  end
