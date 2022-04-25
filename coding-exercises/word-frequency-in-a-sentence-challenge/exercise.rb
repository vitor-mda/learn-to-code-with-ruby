module WordFrequencyInASentenceChallenge
    # Return a hash where the keys will represent
    # the words in the string and the values will
    # represent how many times that key occurs
    def self.answer(sentence)
        frequency_by_word = Hash.new(0)

        sentence.split.each do |word|
            frequency_by_word[word] += 1
        end

        frequency_by_word
    end
end
