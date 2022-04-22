# Write a `longest_word` method that accepts a string (`sentence`) as its only argument.
# The method should return the longest word in the sentence.
# If two words are tied for maximum length, the method should return the last word in the sentence with that length.
# You can assume:
#   - each word in the sentence is separated by a single space
#   - the sentence does not contain any symbols or characters, including punctuation.
def longest_word(sentence)
    longest_word = nil
    sentence.split.each { |word| longest_word = word if longest_word.nil? || word.length >= longest_word.length }
    longest_word
end

module Exercise3
    def self.answer(sentence)
        longest_word(sentence)
    end
end