class Homework

  def shout(string)
    upper = string.upcase
    return(upper)
  end

  def repeat_string(string,int)
    print (string + "\n") * int
  end

  def calendar(holiday,dates)
    calhash = {}
    holiday.each_with_index { |h,d| calhash[h] = dates[d] }
    return(calhash)
  end

end

part1 = Homework.new.shout('hi')
part2 = Homework.new.repeat_string('repeat this string',3)
part3 = Homework.new.calendar(['Independence Day', 'Halloween', 'Christmas'], ['4 July', '31 October', '25 December'])

puts part1
puts part2
puts part3
