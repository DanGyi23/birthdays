class BirthdayList
  
  def initialize
    @birthdays = []
    @todays_date = Time.now.strftime('%m/%d/%Y')
    options
  end
  
  def options
    puts "Choose your option"
    puts "1: store new birthday"
    puts "2: print birthdays"
    puts "3: check whether it is anyones birthday today"
    puts "4: quit"
    input = gets.chomp
    if input == "1" || input.include?("store")
      puts "Enter name"
      name = gets.chomp
      puts "Enter days in format dd"
      day = gets.chomp
      puts "Enter month in format mm"
      month = gets.chomp
      puts "Enter year in format yyyy"
      year = gets.chomp
      store_birthday(name,day,month,year)
      options
    elsif input == "2" || input.include?("print")
      puts "Printing birthdays:"
      print_birthdays
      options
    elsif input == "3" || input.include?("check")
      birthday_check
      options
    elsif input == "4" || input == "quit"
      "Quitting..."
    else
      puts "Sorry, I don't understand your input, try again"
      options
    end
  end

  def store_birthday(name,day,month,year)
    @birthdays << [name,day,month,year]
  end

  def print_birthdays
    @birthdays.each { |entry| puts "#{entry[0]} - #{entry[1]}/#{entry[2]}/#{entry[3]}" }
  end

  def birthday_check
    @birthdays.each { |entry| 
    if entry[2] + "/" + entry[1] == @todays_date[0..4]
      puts "#{entry[0]} has a birthday today! They are #{@todays_date[6..-1].to_i - entry[3].to_i} years old!"
    end
    }
  end

end
