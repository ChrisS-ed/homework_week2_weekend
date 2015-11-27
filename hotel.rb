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
        room.fill(room, 1)
        guest.check_in(room)
        occupancy = hotel_capacity
        puts "Guest added: current occupancy for #{@name} is #{occupancy}"
        return
      end
    end
    if room_type == "single"
      puts "Sorry, no single rooms left"
    else
      puts "Sorry, no double rooms left"
    end
  end

  def add_guests(guest1, guest2, room_type)
    # look for empty room of required type and assign guest(s) to it
    if room_type == "single"
        puts "Sorry, maximum of one person allowed in single rooms"
      return
    end
    @rooms.each do |key, room|
      if (room.occupants == 0) and (room.type == room_type)
        # add guest to hotel.guests, update room.occupants, update guest.room and guest.checked_in
        @guests[guest1.name] = guest1
        @guests[guest2.name] = guest2
        room.fill(room, 2)
        guest1.check_in(room)
        guest2.check_in(room)
        occupancy = hotel_capacity
        puts "Two guests added: current occupancy for #{@name} is #{occupancy}"
        return
      end
    end
    puts "Sorry, no double rooms left"
  end

end

