require './test/test_helper'
require 'pry'


class EnigmaTest < Minitest::Test

  def setup
    @alpha_arr = ('a'..'z').to_a << " "
    @key = Key.new('02715')
    @offset = Offsets.new('040895')
    @enigma = Enigma.new
  end

  def test_enigma_exists
    assert_instance_of Enigma, @enigma
  end

  def test_enigma_can_encrypt
    expected = {
        encryption: "keder ohulw",
        key: "02715",
        date: "040895"
      }

  assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")

  end
# pry(main)> enigma.encrypt("hello world", "02715", "040895")
#=>

#
# # decrypt a message with a key and date
# pry(main) > enigma.decrypt("keder ohulw", "02715", "040895")
# #=>
# #   {
# #     decryption: "hello world",
# #     key: "02715",
# #     date: "040895"
# #   }
#
# # encrypt a message with a key (uses today's date)
# pry(main)> encrypted = enigma.encrypt("hello world", "02715")
# #=> # encryption hash here
#
# #decrypt a message with a key (uses today's date)
# pry(main) > enigma.decrypt(encrypted[:encryption], "02715")
# #=> # decryption hash here
#
# # encrypt a message (generates random key and uses today's date)
# pry(main)> enigma.encrypt("hello world")
# #=> # encryption hash here
end
