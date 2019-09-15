require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'
require 'mocha/minitest'


class KeyTest < Minitest::Test

    def setup
      @ran_num_1 = Key.new
      @ran_num_2 = Key.new("12345")
    end

    def test_keys_exists
      assert_instance_of Key, @ran_num_1
    end

    def test_can_be_initialized_with_or_without_key
      @ran_num_1.keys.stubs(:keys).returns("67899")
      assert_equal "12345", @ran_num_2.keys
    end

    def test_array_can_be_converted
      expected = {
        :a=>12,
        :b=>23,
        :c=>34,
        :d=>45
      }

      assert_equal expected, @ran_num_2.get_keys

      expected_2 = {
        :a=>67,
        :b=>78,
        :c=>89,
        :d=>99
      }
      
      @ran_num_1.get_keys.stubs(:keys).returns(expected_2)
    end
end
