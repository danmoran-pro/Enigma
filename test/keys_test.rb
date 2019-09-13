require 'minitest/autorun'
require 'minitest/pride'
require './lib/keys'
require "pry"


class KeysTest < Minitest::Test

    def setup
      @key_1 = Keys.new("12345")
    end

    def test_keys_exists
      assert_instance_of Keys, @key_1
    end

    def test_keys_exists
      assert_equal "12345", @key_1.key
    end

    def test_key_is_an_array_of_nums
      assert_equal [1,2,3,4,5], @key_1.convert_to_nums
    end

end
