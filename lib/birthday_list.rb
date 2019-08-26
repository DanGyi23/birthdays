class BirthdayList
  def initialize
    @birthdays = []
    @todays_date = Time.now.split(' ')[0]
  end
end
