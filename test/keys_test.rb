require 'minitest/autorun'
require 'minitest/pride'
require './lib/keys'
require "pry"


class KeysTest < Minitest::Test

    def setup
      @keys_1 = Keys.new("12345")
    end

    def test_keys_exists
      assert_instance_of Keys, @keys_1
    end

end
