class Enigma


  def encrypt(message, key, date)
    keys = Key.new(key)
    offsets = Offsets.new(date)
    binding.pry
    shift_encrypt = offsets.merge(keys) { |key, key_value, offset_value| key_value + offset_value }
    {encryption: shift_encrypt.shift_message(1),
    key: keys.key,
    date: date}
  end



end
