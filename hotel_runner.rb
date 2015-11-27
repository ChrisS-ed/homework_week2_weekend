require "pry-byebug"
require_relative "hotel"
require_relative "room"

# create hotel
hotel1 = Hotel.new("The Ritz")
puts hotel1.name

# add room to hotel, single or double
new_room1 = Room.new({room_no: 111, type: "single", occupants: 1, room_rate: 50})
hotel1.add_room(new_room1)
new_room2 = Room.new({room_no: 211, type: "double", occupants: 1, room_rate: 100})
hotel1.add_room(new_room2)

 # {room_no: 112, type: "single", occupants: 0, room_rate: 50}, {room_no: 211, type: "double", occupants: 0, room_rate: 100}, {room_no: 212, type: "double", occupants: 0, room_rate: 100}

# check hotel capacity
occupancy = hotel1.hotel_capacity
puts "Total current occupancy for #{hotel1.name} is #{occupancy}"

#binding.pry; ' '