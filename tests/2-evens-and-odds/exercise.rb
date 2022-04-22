require "test/unit"
require_relative "../../coding-exercises/2-evens-and-odds/exercise"

class Exercise2Test < Test::Unit::TestCase
    def test_valid_arrays
        numbers = []
        expected = [[], []]
        result = Exercise2.answer(numbers)
        assert_equal(expected, result)

        0.upto(10) do |i|
            numbers.push(i)
            if i.odd?
                expected[0].push(i)
            else
                expected[1].push(i)
            end

            result = Exercise2.answer(numbers)
            assert_equal(expected, result)
        end
    end

    def test_odds_only
        odd_numbers = [1, 3, 5, 7, 9, 11]
        expected = [odd_numbers, []]
        result = Exercise2.answer(odd_numbers)
        assert_equal(expected, result)

    end

    def test_evens_only
        even_numbers = [0, 2, 4, 6, 8, 10]
        expected = [[], even_numbers]
        result = Exercise2.answer(even_numbers)
        assert_equal(expected, result)
    end
end