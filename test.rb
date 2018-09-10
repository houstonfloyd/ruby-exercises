
require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'

class TextTest < Minitest::Test
  def setup
    @file = File.open('sfa','r')
  end
  
  def test_swap
    text = Text.new(@file.read)
  end
  
  def teardown
  end
end