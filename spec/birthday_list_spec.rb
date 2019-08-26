require 'birthday_list'

describe BirthdayList do
  
  let(:todays_date) { '2019-08-26' }

  it 'responds to store_birthday' do
    expect(subject).to respond_to(:store_birthday).with(4).arguments
  end

  it 'responds to print_birthdays' do
    expect(subject).to respond_to(:print_birthdays)
  end

  it 'prints stored birthdays when print_birthday is called' do
    allow(subject).to receive(:store_birthday).with("John", 1947, 8, 26)
    expect{ subject.print_birthdays }.to output('John - 26-08-1974').to_stdout
  end

  it 'responds to birthday_check' do
    expect(subject).to respond_to(:birthday_check)
  end

  it 'prints that it is someones birthday today if today == their birthday' do
    allow(subject).to receive(:store_birthday).with("John", 1947, 8, 26)
    expect(subject.birthday_check).to output("It's John's birthday today! They are 72 years old!")
  end

end