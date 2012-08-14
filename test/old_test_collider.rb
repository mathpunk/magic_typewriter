require 'test/unit'
require 'redgreen'
require_relative '../lib/texton.rb'
require_relative '../lib/collider.rb'

class TestCollider < Test::Unit::TestCase
  def setup
    @texton = Texton.new("test/texton.txt")
    @collider = Collider.new()
    @doc = {title: "document", description: "in test/test_collider", when: Time.now}
  end

  #def test_add_record
    # @collider.add_record(@doc)
  #end

  #def test_all_records
    # @collider.all_records
  #end
end
