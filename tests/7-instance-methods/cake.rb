require "test/unit"
require_relative "../../coding-exercises/7-instance-methods/cake"

class CakeTest < Test::Unit::TestCase
    def test_bake
        expected_value = "Baking the cake"
        actual_value = Cake.new.bake
        assert_equal(expected_value, actual_value)
    end

    def test_slice
        expected_value = "Slicing the cake"
        actual_value = Cake.new.slice
        assert_equal(expected_value, actual_value)
    end

    def test_sell
        expected_value = "Sold the cake"
        actual_value = Cake.new.sell
        assert_equal(expected_value, actual_value)
    end
end
