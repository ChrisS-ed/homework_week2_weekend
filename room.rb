class Room
  attr_reader :room_no, :type, :occupants, :room_rate

  def initialize(options = {})
    @room_no = options[:room_no]
    @type = options[:type]
    @occupants = options[:occupants]
    @room_rate = options[:room_rate]
  end

end
