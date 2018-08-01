require_relative 'cipher'
require 'test/unit'

class TestDecryptor < Test::Unit::TestCase
  def test_example_1
    cipher         = 'zodvqukgwefbyitmrsplhacxnj'
    encrypted_text = 'dzs'

    decryptor = Cipher.new(cipher, encrypted_text) 
    decryptor.perform

    assert_equal('car', decryptor.result)
  end

  def test_example_2
    cipher    = 'xipmuzfkbrlwotjancqgveshdy'
    encrypted_text = 'skd qj qucbjvq?'

    decryptor = Cipher.new(cipher, encrypted_text) 
    decryptor.perform

    assert_equal('why so serious?', decryptor.result)
  end

  def test_challenge
    cipher    = 'oephjizkxdawubnytvfglqsrcm'
    encrypted_text = 'knlfgnb, sj koqj o yvnewju'

    decryptor = Cipher.new(cipher, encrypted_text) 
    decryptor.perform

    assert_equal('houston, we have a problem', decryptor.result)
  end
end
