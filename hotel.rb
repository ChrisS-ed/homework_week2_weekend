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

end

