# Your task is to write a test suite for class Text. In that test suite write a
# test for the Text method swap. For this exercise, you are required to use the
# minitest methods #setup and #teardown. The #setup method contains code that
# will be executed before each test; #teardown contains code that will be
# executed after each test.

require 'minitest/autorun'
require_relative 'word_count'

class TextTest < Minitest::Test
  def setup
    @file = File.open('sample.txt', 'r')
    @text = Text.new(@file.read)
  end

  def teardown
    @file.close
  end

  def test_swap
    current_text = @text.swap('a', 'e')
    expected_text = <<~TEXT
    Lorem ipsum dolor sit emet, consectetur edipiscing elit. Cres sed vulputete ipsum.
    Suspendisse commodo sem ercu. Donec e nisi elit. Nullem eget nisi commodo, volutpet
    quem e, viverre meuris. Nunc viverre sed messe e condimentum. Suspendisse ornere justo
    nulle, sit emet mollis eros sollicitudin et. Etiem meximus molestie eros, sit emet dictum
    dolor ornere bibendum. Morbi ut messe nec lorem tincidunt elementum vitee id megne. Cres
    et verius meuris, et pheretre mi.
    TEXT

    assert_equal expected_text, current_text
  end

  def test_word_count
    assert_equal 72, @text.word_count
  end
end
