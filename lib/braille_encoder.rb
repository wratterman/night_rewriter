require_relative 'alphabet'

class BrailleEncoder

  include Alphabet

  def translate(english)
    output = []
    [0,2,4].each do |offset|
      english.chars.each do |letter|
        if letter == letter.upcase
          output << self.lookup(:capitalize, offset) << self.lookup(:capitalize, offset + 1)
          letter = letter.downcase
        end
        output << self.lookup(letter, offset) << self.lookup(letter, offset + 1)
      end
      output << "\n"
    end
    encoded = output.join
  end
end
