class Room

  attr_reader(:room_name, :capacity, :guests)

  def initialize(room_name, capacity, guests)
    @room_name = room_name
    @capacity = capacity
    @guests = guests
  end

end
