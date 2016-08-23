class Utility
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
