require './modules/key_offset_helper'

class Offsets

  include KeyOffsetHelper
  attr_reader :date

  def initialize(date = current_date)
    @date = date
  end

  def squared
    squared = (@date.to_i * @date.to_i).to_s
    squared[-4..-1]
  end

  def hashed
    offsets_arr = squared

    {
      a: offsets_arr[0].to_i,
      b: offsets_arr[1].to_i,
      c: offsets_arr[2].to_i,
      d: offsets_arr[3].to_i
    }
  end



end
