# Petitest::PowerAssert

[Power Assert](https://github.com/k-tsj/power_assert) for Petitest.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "petitest-power_assert"
```

And then execute:

```bash
bundle
```

Or install it yourself as:

```bash
gem install petitest-power_assert
```

## Usage

### 1. Prepend Petitest::PowerAssert into your test groups

```ruby
require "petitest/power_assert"

class ExampleTest < Petitest::TestGroup
  prepend ::Petitest::PowerAssert
end
```

### 2. Write tests

```ruby
require "petitest/autorun"
require "petitest/power_assert"

class ExampleTest < Petitest::TestGroup
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

  # ... tests, tests, and more tests ...
end
```

### 3. See the results

![image](/images/screenshot.png)
