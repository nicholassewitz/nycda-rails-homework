class Utility

  def self.count_words(string)
    words = string.split(' ')
    frequency = Hash.new(0)
    words.each { |word| frequency[word] += 1 }
    return frequency
  end
end


print Utility.count_words('it was the best of times, it was the worst of times')
