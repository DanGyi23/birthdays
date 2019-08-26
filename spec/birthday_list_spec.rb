require 'birthday_list'

describe BirthdayList do
  
  let(:todays_date) { '26/08/2019' }

  it 'responds to store_birthday' do
    expect(subject).to respond_to(:store_birthday).with(4).arguments
  end

  it 'responds to print_birthdays' do
    expect(subject).to respond_to(:print_birthdays)
  end

  it 'prints stored birthdays when print_birthday is called' do
    allow(subject).to receive(:store_birthday).with("John", "26","08","1947")
    expect(subject).to receive(:print_birthdays).and_return('John - 26/08/1974')
    subject.print_birthdays
  end

  it 'responds to birthday_check' do
    expect(subject).to respond_to(:birthday_check)
  end

  it 'prints that it is someones birthday today if today == their birthday' do
    allow(subject).to receive(:store_birthday).with("John", "26","08","1947")
    expect(subject).to receive(:birthday_check).and_return("John has a birthday today! They are 72 years old!")
    subject.birthday_check
  end

end