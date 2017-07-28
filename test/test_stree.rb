gem "minitest"
require "minitest/autorun"
require "stree"

class TestStree < Minitest::Test
  def test_hello_world
    assert_equal 'hello world', Stree.hello_world
  end
end
