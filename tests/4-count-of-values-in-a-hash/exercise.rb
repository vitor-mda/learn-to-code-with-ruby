require "test/unit"
require_relative "../../coding-exercises/4-count-of-values-in-a-hash/exercise"

class Exercise4Test < Test::Unit::TestCase
    def test_one_ocurrence
        hash = {z: 0, a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7, h: 8, i: 9, j: 10}
        value = 5
        expected = 1
        result = Exercise4.answer(hash, value)
        assert_equal(expected, result)
    end

    def test_two_ocurrences
        hash = {z: 0, a: 0, b: 1, c: 2, d: 3, e: 4, f: 5, g: 6, h: 7, i: 8, j: 9}
        value = 0
        expected = 2
        result = Exercise4.answer(hash, value)
        assert_equal(expected, result)
    end

    def test_full_ocurrence
        hash = {z: 7, a: 7, b: 7, c: 7, d: 7, e: 7, f: 7, g: 7, h: 7, i: 7, j: 7}
        value = 7
        expected = 11
        result = Exercise4.answer(hash, value)
        assert_equal(expected, result)
    end

    def test_zero_ocurrences
        hash = {z: 0, a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7, h: 8, i: 9, j: 10}
        value = 11
        expected = 0
        result = Exercise4.answer(hash, value)
        assert_equal(expected, result)
    end
end
