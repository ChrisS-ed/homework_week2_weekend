class Room
  attr_reader :room_no, :type, :occupants, :room_rate

  def initialize(options = {})
    @room_no = options[:room_no]
    @type = options[:type]
    @occupants = options[:occupants] # make array for two guests in one room
    @room_rate = options[:room_rate]
  end

  def fill(room)
    @occupants = 1
  end

end
