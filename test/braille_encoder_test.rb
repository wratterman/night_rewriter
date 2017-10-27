require './test/test_helper'
require './lib/braille_encoder'

class BrailleEncoderTest < Minitest::Test

  def encoder
    @encoder ||= BrailleEncoder.new
  end

  def test_can_lookup
    assert_equal ".", encoder.lookup("a", 4) # Abstracted Out
  end

  def test_postion
    assert_equal ".", encoder.lookup(:capitalize, 0) # Abstracted Out
  end
end
