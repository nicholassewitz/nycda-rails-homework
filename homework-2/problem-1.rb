# create a method called fizzbuzz that takes one variable
def fizzbuzz(num)
  # use a case when statement to add conditional logic. works in chronological order
  case
  # when variable is divisable by 15 then 'FizzBuzz'
    when num % 15 == 0 then 'FizzBuzz'
  # when variable is divisable by 3 then 'Fizz'
    when num % 3  == 0 then 'Fizz'
  # when variable is divisable by 5 then 'Buzz'
    when num % 5  == 0 then 'Buzz'
  # if variable is not divisable by 15,3,5 then variable
    else num
    # end conditional logig
  end
# end method
end

# new method
def fizz_buzz_to(limit)
  # uses the ruby integer method upto which iterates the given block, passing in integer values from int up to and including limit.
  # from the integer 1 up to limit integer variable put run fizzbuzz on each integer
  1.upto(limit).each do |num|
    puts fizzbuzz(num)
  end
end
