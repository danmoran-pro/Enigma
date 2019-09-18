class Encrypt

  def initialize
    @message = message
    @offset = Offsets.new("140919")
    @key =  Key.new("12345").create_keys
  end

end
