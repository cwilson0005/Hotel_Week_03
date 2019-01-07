class Room

  attr_reader(:room_name, :capacity, :guests)

  def initialize(room_name, capacity, guests)
    @room_name = room_name
    @capacity = capacity
    @guests = guests
  end

  def guest_count
    return @guests.length
  end

  def add_guest(guest)
    @guests.push(guest)
  end

  def remove_guest(guest)
    @guests.delete(guest)
  end

  def empty_room
    while guest_count() > 0
      @guests.pop
    end
  end

end
