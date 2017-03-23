require "petitest/autorun"
require "petitest/power_assert"

class PetitestPowerAssertTest < Petitest::TestGroup
  prepend ::Petitest::PowerAssert

  def test_addition
    a = 1
    b = 1
    assert do
      a + b == 2
    end
  end
end
