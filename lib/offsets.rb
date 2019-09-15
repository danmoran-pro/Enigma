require './modules/key_offset_helper'

class Offsets

  include KeyOffsetHelper
  attr_reader :date

  def initialize(date = current_date)
    @date = date
  end




end
