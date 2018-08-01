CONSTANT  = 'abcdefghijklmnopqrstuvwxyz'

class Cipher
  def initialize(cipher, encrypted_text)
    @cipher         = cipher
    @encrypted_text = encrypted_text
    @original_text  = []
  end

  def perform
    decipher_text
  end

  def result
    @original_text.join
  end

  private

  def decipher_text
    @encrypted_text.chars.each do |letter|
      value = @cipher.index(letter)
      appending_value = value ? CONSTANT[value] : letter

      @original_text.append appending_value
    end
  end
end
