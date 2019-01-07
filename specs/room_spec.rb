require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guest')

class RoomTest < MiniTest::Test

  def setup
    @room = Room.new("One", 2, [])
  end

  def test_room_has_name
    assert_equal("One", @room.room_name)
  end

  def test_capacity
    assert_equal(2, @room.capacity)
  end

  def test_guests_getter
    assert_equal([], @room.guests)
  end

  def test_count_guests
    assert_equal(0, @room.guest_count)
  end

end
