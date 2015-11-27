class Guest
attr_reader :name, :room_no, :checked_in

  def initialize(name)
    @name = name
    @room_no = 0
    @checked_in = false
  end

  def check_in(room)
    @room_no = room.room_no
    @checked_in = true
  end

end