require "test/unit"
require_relative "../../coding-exercises/6-create-classes-with-instance-variables/musical"

class MusicalTest < Test::Unit::TestCase
    def test_instantiation
        musical = Musical.new
        assert_equal([:@name, :@cast, :@duration], musical.instance_variables)
    end
end
