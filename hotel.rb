class Hotel
  attr_reader :name, :rooms, :guests

  def initialize(hotel_name)
    @name = hotel_name
    @rooms = {}
    # guests need name and room no, and checked_in status
    @guests = {}
  end
  
  def add_room(room)
    @rooms[room.room_no] = room
  end

  def hotel_capacity
    occupancy = 0
    @rooms.each do | key, room |
      occupancy += room.occupants
    end
    occupancy
  end

  def add_guest(guest, room_type)
    # look for empty room of required type and assign guest(s) to it
    @rooms.each do |key, room|
      if (room.occupants == 0) and (room.type == room_type)
        # add guest to hotel.guests, update room.occupants, update guest.room and guest.checked_in
        @guests[guest.name] = guest
        room.fill(room)
        guest.check_in(room)
      end
    end
     # binding.pry; ' '
  end

end

