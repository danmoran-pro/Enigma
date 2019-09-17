require './test/test_helper'
require './lib/offsets'
require './lib/key'
require './lib/shift'
require 'pry'


class ShiftTest < Minitest::Test

  def setup
    @ran_num_1 = Key.new
    @ran_num_2 = Key.new("12345")
    @offset_1 = Offsets.new
    @offset_2 = Offsets.new("140919")
    @shift_1 = Shift.new(@ran_num_2, @offset_2)
  end

  def test_shift_exists
    assert_instance_of Shift, @shift_1
  end

  def test_shift_is_created
  expected =
    {
    :a=> 16,
    :b=> 28,
    :c=> 40,
    :d=> 46
  }

    assert_equal expected, @shift_1.create_shift

  end

end
