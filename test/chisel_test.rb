require_relative 'test_helper'
require './lib/chisel'

class ChiselTest < MiniTest::Test
  def test_chisel_exists
    assert Chisel.new("Message")
  end
end