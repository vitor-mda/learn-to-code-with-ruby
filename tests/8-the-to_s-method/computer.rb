require "test/unit"
require_relative "../../coding-exercises/8-the-to_s-method/computer"

class ComputerTest < Test::Unit::TestCase
    def test_to_s
        expected_value = "A powerful Intel i7 computer with 64GB memory and 2 TB of storage"
        actual_value = Computer.new.to_s
        assert_equal(expected_value, actual_value)
    end
end
