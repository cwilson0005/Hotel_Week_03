require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')

class GuestTest < MiniTest::Test

  def setup
    @guest = Guest.new("Conor")
  end

  def test_guest_has_name
    assert_equal("Conor", @guest.guest_name)
  end

end
