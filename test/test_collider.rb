require 'test/unit'
require 'redgreen'
require_relative '../lib/texton.rb'
require_relative '../lib/collider.rb'

texton = Texton.new()
collider = Collider.new()

class TestCollider < Test::Unit::TestCase
  def test_assert
    assert_equal true, true
  end
end
