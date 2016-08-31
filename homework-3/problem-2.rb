class Animal
  def speak
    puts 'grrrrr'
  end
end

class Sub_Animal < Animal
  def speak
    puts 'cawcaw'
  end
end

puts Animal.new.speak
puts Sub_Animal.new.speak
