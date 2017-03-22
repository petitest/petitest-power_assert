require "petitest/autorun"
require "petitest/power_assert"

class PetitestPowerAssertTest < Petitest::TestGroup
  prepend ::Petitest::PowerAssert

  def test_block
    a = 1
    b = 1
    assert do
      a + b == 100
    end
  end

  def test_equality
    assert_equal("foo" + "bar", :baz.to_s)
  end

  def test_raise
    raise
  end

  def test_true
    assert(true)
  end
end
