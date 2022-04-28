require "test/unit"
require_relative "../../coding-exercises/5-create-a-class/cookie"

class CreateAClassTest < Test::Unit::TestCase
    def test_cookie_creation
        cookie = create_cookie
        assert_equal(Cookie, cookie.class)
    end
end
