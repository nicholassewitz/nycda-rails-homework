class Utility
<<<<<<< HEAD
    attr_accessor :words

    def initialize(words)
        @words = words
    end

    def count_words
        each_word.each_with_object(Hash.new(0)) { |word, hash| hash[word] += 1 }
    end

    def each_word
        words.downcase.scan(/\w+/)
    end

    puts Utility.new('it was the best of times, it was the worst of times')
end
=======

  def self.count_words(string)
    words = string.split(' ')
    frequency = Hash.new(0)
    words.each { |word| frequency[word] += 1 }
    return frequency
  end
end


print Utility.count_words('it was the best of times, it was the worst of times')
>>>>>>> 928b26998151a15e80a0d50f8edd58c8831bb7e2
