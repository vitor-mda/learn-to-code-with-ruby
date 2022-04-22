require "test/unit"
require_relative "../../coding-exercises/3-longest-word-in-a-string/exercise"

class Exercise3Test < Test::Unit::TestCase
    def test_valid_sentences
        longest_word = "abcdefghijklmnopqrstuvwxyz"
        sentence = "a ab abc abcd #{longest_word} abcdef ab a"
        result = Exercise3.answer(sentence)
        assert_equal(longest_word, result)
    end

    def test_sentences_with_tied_words
        tied_word_one = "1234567890_FIRST"
        tied_word_two = "1234567890__LAST"
        sentence = "a ab abc #{tied_word_one} abcdef abc #{tied_word_two} abcdefg abc ab a"
        result = Exercise3.answer(sentence)
        assert_equal(tied_word_two, result)
    end
end