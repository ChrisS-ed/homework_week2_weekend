require "pry-byebug"
require_relative "hotel"
require_relative "room"
require_relative "guest"


# create hotel
hotel1 = Hotel.new("The Ritz")
puts hotel1.name

# add room to hotel, single or double
new_room1 = Room.new({room_no: 111, type: "single", occupants: 0, room_rate: 50})
hotel1.add_room(new_room1)
new_room2 = Room.new({room_no: 211, type: "double", occupants: 0, room_rate: 100})
hotel1.add_room(new_room2)

# check hotel capacity
occupancy = hotel1.hotel_capacity
puts "Total current occupancy for #{hotel1.name} is #{occupancy}"

# add guests WHAT HAPPENS WITH TWO PEOPLE IN DOUBLE ROOM? - array for guests in room?
guest1 = Guest.new("Bob Smith")
hotel1.add_guest(guest1, "single")



binding.pry; ' '