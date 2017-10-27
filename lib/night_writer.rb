require_relative 'braille_encoder'
require_relative 'english_encoder'

class NightWriter

  def initialize
    @braille_encoder = BrailleEncoder.new
    @english_encoder = EnglishEncoder.new
  end

  def encode_to_braille(plain)
    @braille_encoder.translate(plain)
  end

  def encode_from_braille(braille)
    @english_encoder.translate(braille)
  end
end
