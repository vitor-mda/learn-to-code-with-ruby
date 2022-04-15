require "test/unit"
require_relative "../../coding-exercises/1-outputting-text/exercise"

class Exercise1Test < Test::Unit::TestCase
    def test_answer
        assert(Exercise1.answer.eql?("I am a Ruby developer!"))
    end
end