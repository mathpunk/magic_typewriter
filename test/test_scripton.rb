require 'test/unit'
require 'redgreen'
require 'yaml'
require_relative '../lib/texton.rb'
require_relative '../lib/scripton.rb'


class TestScripton < Test::Unit::TestCase
  def setup
    @scripton = Scripton.new([Texton.new("this is"), Texton.new("an array"), Texton.new("of textons")])
  end

=begin
  def test_edit
    assert_respond_to(@scripton, :edit)
    assert_equal "this is an array of textons", @scripton.edit
  end
=end

  def test_query
    assert_respond_to(@scripton, :query)
  end

end
