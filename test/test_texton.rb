require 'test/unit'
require 'redgreen'
require_relative '../lib/texton.rb'

class TestTexton < Test::Unit::TestCase
  def setup
    @texton = Texton.new(File.open("test/texton.txt").read())
  end

  def test_invoke_magic
    assert_equal ["please", "thank you"], @texton.invoke_magic
  end

  def test_invoke_journal
    assert_equal ["thoughts", "feelings"], @texton.invoke_journal
  end

  def test_invoke_pages
    assert_equal ["documents", "pages"], @texton.invoke_pages 
  end

end
