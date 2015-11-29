class Report
attr_reader :hotel

  def initialize(hotel)
    @hotel = hotel
  end

  def occupancy(hotel)
    hotel_occupancy = 0
    hotel.rooms.each do | key, room |
      hotel_occupancy += room.occupants
    end
    puts "Total current occupancy for #{hotel.name} is #{hotel_occupancy}"
  end

  def revenue(hotel)
    total = 0
    hotel.rooms.each do | key, room |
      total += room.room_rate
    end
    puts "Total daily revenue for #{hotel.name} is £#{total}"
  end

end