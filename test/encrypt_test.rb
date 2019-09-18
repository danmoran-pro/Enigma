require './test/test_helper'
require 'pry'


class EncryptTest < Minitest::Test

  def setup
    @offset_2 = Offsets.new("140919")
    @ran_num_2 = Key.new("12345")
    @encrypt = Encrypt.new("Hello", "140919", "12345")
  end

  def test_encrypt_exists
    assert_instance_of Encrypt, @encrypt
  end



end
