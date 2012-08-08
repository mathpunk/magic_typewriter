require 'test/unit'
require 'redgreen'
require_relative '../lib/pulverizer.rb'

class TestPulverizer < Test::Unit::TestCase

  def test_invoke_magic
    assert_equal ["please"], "The magic word is {{please}}.".invoke_magic
    assert_equal ["please", "thank you"], "The magic words are {{please}} and {{thank you}}.".invoke_magic
  end

  def test_invoke_journal
    assert_equal ["thought"], "Hmmm... I had a ((thought)).".invoke_journal
    assert_equal ["thoughts", "feelings"], "I'm having ((thoughts)) and ((feelings)).".invoke_journal
  end

  def test_invoke_pages
    assert_equal ["page"], "This [[page]] intentionally left blank.".invoke_pages
    assert_equal ["documents", "pages"], "Read these [[documents]] and [[pages]].".invoke_pages 
  end

end
