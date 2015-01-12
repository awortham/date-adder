require 'date'
class AddDates
  def formatter(date)
    Date.parse(date).to_s.gsub('-', '')
  end

  def add_nums(date)
    stuff = date.chars.map { |number| number.to_i }
    stuff.reduce(:+)
  end

  def add_all
    date = formatter('January 1, 2015')
    last_date = formatter('December 31, 2015')
    total = 0
    until date == last_date
      total += add_nums(date)
      date = date.next
    end
    total
  end
end
