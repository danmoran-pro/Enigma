require './modules/key_offset_helper'

class Key

  include KeyOffsetHelper
  attr_reader :keys

  def initialize(keys = ran_num_gen)
    @keys = keys
  end

  def get_keys
  {
    a: @keys[0..1].to_i,
    b: @keys[1..2].to_i,
    c: @keys[2..3].to_i,
    d: @keys[3..4].to_i
  }
  end
end
