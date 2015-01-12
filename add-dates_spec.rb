require 'rspec'
require_relative 'add-dates'

RSpec.describe 'adding dates' do
  it 'can format the date' do
    date = 'January 12, 2015'
    adder = AddDates.new
    expect(adder.formatter(date)).to eq('20150112')
  end

  it 'can add the numbers together from a formatted date' do
    formatted_date = '20150112'
    adder = AddDates.new
    expect(adder.add_nums(formatted_date)).to eq(12)
  end

  it 'can add all the days in 2015' do
    adder = AddDates.new
    expect(adder.add_all).to eq(24000)
  end
end
