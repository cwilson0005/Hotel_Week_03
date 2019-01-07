require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guest')

class RoomTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Conor")
    @guest2 = Guest.new("Keith")
    @room1 = Room.new("One", 2, [])
    @room2 = Room.new("Two", 1, [@guest1])
  end

  def test_room_has_name
    assert_equal("One", @room1.room_name)
  end

  def test_capacity
    assert_equal(2, @room1.capacity)
  end

  def test_guests_getter
    assert_equal([], @room1.guests)
  end

  def test_count_guests__empty
    assert_equal(0, @room1.guest_count)
  end

  def test_count_guests__not_empty
    assert_equal(1, @room2.guest_count)
  end

  def test_can_add_guest
    @room1.add_guest(@guest2)
    assert_equal("Keith", @room1.guests[0].guest_name)
  end

  def test_can_remove_guest
    @room1.add_guest(@guest2)
    @room1.remove_guest(@guest2)
    assert_equal([], @room1.guests)
  end

end
