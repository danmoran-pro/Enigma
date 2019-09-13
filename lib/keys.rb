class Keys

  attr_reader :key

  def initialize(key)
    @key = key
  end

  def convert_to_nums
    stir_arr = @key.split("")
    stir_arr.map {|stir| stir.to_i}
  end


end
