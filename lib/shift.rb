class Shift

  def initialize(key, offset)
    @key = key
    @offset = offset
  end

  def create_shift
    keys = @key.create_keys
    offset = @offset.hashed
    offset.merge(keys) { |key, key_value, offset_value| key_value + offset_value }
  end
end
