require "test/unit"
require_relative "../../coding-exercises/each_with_index-method-challenge/exercise"

class EachWithIndexChallengeTest < Test::Unit::TestCase
    def test_valid_arrays
        0.upto(10) do |i|
            array = (0..i).to_a
            expected_result = array.reduce { |sum, element| sum + element * element }
            result = EachWithIndexChallenge.answer(array)
            assert_equal(expected_result, result)
        end
    end

    def test_empty_array
        array = []
        expected_result = nil
        result = EachWithIndexChallenge.answer(array)
        assert_equal(expected_result, result)
    end

    def test_non_array_argument
        non_array = BasicObject.new
        expected_result = nil
        result = EachWithIndexChallenge.answer(non_array)
        assert_equal(expected_result, result)
    end

    def test_nil
        expected_result = nil
        result = EachWithIndexChallenge.answer(nil)
        assert_equal(expected_result, result)
    end
end