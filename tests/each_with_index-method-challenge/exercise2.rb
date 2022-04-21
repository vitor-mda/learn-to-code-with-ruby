require "test/unit"
require_relative "../../coding-exercises/each_with_index-method-challenge/exercise2"

class EachWithIndexChallenge2Test < Test::Unit::TestCase
    def test_valid_arrays
        0.upto(10) do |i|
            array = (0..i).to_a
            expected_result = Array.new(11, 0)
            result = EachWithIndexChallenge2.answer(array)
            assert_equal(expected_result, result)
        end

        10.downto(0) do |i|
            array = (i..10).to_a
            expected_result = [24, 21, 16, 9, 0]
            expected_result.pop(i)
            result = EachWithIndexChallenge2.answer(array)
            assert_equal(expected_result, result)
        end
    end

    def test_empty_array
        array = []
        expected_result = nil
        result = EachWithIndexChallenge2.answer(array)
        assert_equal(expected_result, result)
    end

    def test_non_array_argument
        non_array = Object.new
        expected_result = nil
        result = EachWithIndexChallenge2.answer(non_array)
        assert_equal(expected_result, result)
    end

    def test_nil
        expected_result = nil
        result = EachWithIndexChallenge2.answer(nil)
        assert_equal(expected_result, result)
    end
end