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

  def check_out(hotel)
    # guest.checked_in false, guest.room_no = 0, update room, update hotel.guests
   
    hotel.rooms[room_no].occupants -= 1
    hotel.guests.delete(@name)
    
    @room_no = 0
    @checked_in = false

  end

end