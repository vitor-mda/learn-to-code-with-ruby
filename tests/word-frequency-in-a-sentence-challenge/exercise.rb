require "test/unit"
require_relative "../../coding-exercises/word-frequency-in-a-sentence-challenge/exercise.rb"

class WordFrequencyInASentenceChallengeTest < Test::Unit::TestCase
    def test_valid_sentence
        sentence = "A a B b C c one two three three four four five five five five five four four three two"
        expected = {
            "A" => 1, "a" => 1, "B" => 1, "b" => 1, "C" => 1, "c" => 1,
            "one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5}
        result = WordFrequencyInASentenceChallenge.answer(sentence)
        assert_equal(expected, result)
    end

    def test_empty_sentence
        sentence = ""
        expected = Hash.new(0)
        result = WordFrequencyInASentenceChallenge.answer(sentence)
        assert_equal(expected, result)
    end
end
