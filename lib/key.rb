require './modules/key_offset_helper'

class Key

  include KeyOffsetHelper
  attr_reader :keys

  def initialize(keys = ran_num_gen)
    @keys = keys
  end

  # def convert_to_nums
  #   stir_arr = @keys.split("")
  #   stir_arr.map {|stir| stir.to_i}
  # end
  #
  # def maps
  #   num_arr = @keys.convert_to_nums
  #   num_arr.map.with_index {|num, index| key[index] + key[index +1].to_s}
  # end

end
