require "opal/test-unit"

class TestTest < Opal::Test::Unit::TestCase
  test "test successful" do
    success = true
    assert(success, "success")
  end
end

