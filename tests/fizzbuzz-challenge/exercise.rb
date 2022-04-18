require "test/unit"
require_relative "../../coding-exercises/fizzbuzz-challenge/exercise"

class FizzbuzzChallengeTest < Test::Unit::TestCase
    def test_fizz
        1.upto(10) do |multiplicand|
            product = 3 * multiplicand
            next if product % 5 == 0
            returned_value = FizzbuzzChallenge.fizzbuzz(product)
            assert_equal("Fizz", returned_value)
        end
    end

    def test_buzz
        1.upto(10) do |multiplicand|
            product = 5 * multiplicand
            next if product % 3 == 0
            returned_value = FizzbuzzChallenge.fizzbuzz(product)
            assert_equal("Buzz", returned_value)
        end
    end

    def test_fizzbuzz
        1.upto(10) do |multiplicand|
            product = 3 * multiplicand
            next unless product % 5 == 0
            returned_value = FizzbuzzChallenge.fizzbuzz(product)
            assert_equal("Fizzbuzz", returned_value)
        end
    end

    def test_not_fizz_buzz_or_fizzbuzz
        1.upto(9) do |multiplier|
            1.upto(10) do |multiplicand|
                product = multiplier * multiplicand
                next if product % 3 == 0 || product % 5 == 0
                returned_value = FizzbuzzChallenge.fizzbuzz(product)
                assert_not_include(["Fizz", "Buzz", "Fizzbuzz"], returned_value)
            end
        end
    end
end