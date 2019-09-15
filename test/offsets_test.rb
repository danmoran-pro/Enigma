require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require './lib/offsets'
require 'pry'


class OffsetsTest < Minitest::Test

  def setup
    @offset_1 = Offsets.new
    @offset_2 = Offsets.new("140919")
  end

  def test_offset_exists
    assert_instance_of Offsets, @offset_2
  end

  def test_can_take_date_or_use_current_date
    assert_equal "150919", @offset_1.date
    assert_equal "140919", @offset_2.date
  end

  def test_date_is_squared_and_returns_last_4_numbers
    assert_equal "4561",@offset_1.squared
    assert_equal "4561",@offset_2.squared
  end

  def test_offset_array_can_be_converted
    expected = {
      :a=>4,
      :b=>5,
      :c=>6,
      :d=>1
    }

    assert_equal expected, @offset_1.hashed

    expected = {
      :a=>4,
      :b=>5,
      :c=>6,
      :d=>1
    }

    assert_equal expected, @offset_2.hashed
  end


end
