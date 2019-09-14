require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'
require 'mocha/minitest'
require "pry"


class KeyTest < Minitest::Test

    def setup
      @ran_num_1 = Key.new
      @ran_num_2 = Key.new("12345")
    end

    def test_keys_exists
      assert_instance_of Key, @ran_num_1
    end

    def test_can_be_initialized_with_or_without_key
      @ran_num_1.stubs(:keys).returns("67899")
      assert_equal "12345", @ran_num_2.keys
    end
    #
    # def test_key_is_an_array_of_nums
    #   assert_equal [1,2,3,4,5], @ran_num_1.convert_to_nums
    # end


end
