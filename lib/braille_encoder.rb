require_relative 'alphabet'

class BrailleEncoder

  include Alphabet

  def translate(english)
    output = []
    [0,2,4].each do |offset|
      english.chars.each do |letter|
        if letter == letter.upcase
          output << lookup(:capitalize, offset) << lookup(:capitalize, offset + 1)
          letter = letter.downcase
        end
        output << lookup(letter, offset) << lookup(letter, offset + 1)
      end
      output << "\n"
    end
    encoded = output.join
  end

  def lookup(character, position)
    self.braille_letter_hash[character].chars[position]
  end
end
