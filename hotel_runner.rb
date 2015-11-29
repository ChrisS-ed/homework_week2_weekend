require "pry-byebug"
require_relative "hotel"
require_relative "room"
require_relative "guest"
require_relative "report"


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

# add guests for single and double rooms
guest1 = Guest.new("Bob Smith")
hotel1.add_guest(guest1, "single")

guest2 = Guest.new("Malcolm Johnston")
guest3 = Guest.new("Sarah Johnston")
hotel1.add_guests(guest2, guest3, "double")

# let guests check out
guest1.check_out(hotel1)
guest3.check_out(hotel1)
occupancy = hotel1.hotel_capacity
puts "Two check-outs: current occupancy for #{hotel1.name} is #{occupancy}"

# report on occupancy and revenue
report1 = Report.new(hotel1)
report1.occupancy(hotel1)
report1.revenue(hotel1)

# binding.pry; ' '
