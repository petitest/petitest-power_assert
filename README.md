# Petitest::PowerAssert

[![Gem Version](https://badge.fury.io/rb/petitest-power_assert.svg)](https://rubygems.org/gems/petitest-power_assert)
[![Documentation](http://img.shields.io/badge/docs-rdoc.info-blue.svg)](http://www.rubydoc.info/github/petitest/petitest-power_assert)

[Power Assert](https://github.com/k-tsj/power_assert) for [Petitest](https://github.com/petitest/petitest).

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

1. Require `"petitest/power_assert"`
1. Prepend `Petitest::PowerAssert` into your test groups
1. Write your test cases as usual

```ruby
require "petitest/autorun"
require "petitest/power_assert"

class ExampleTest < Petitest::TestGroup
  prepend ::Petitest::PowerAssert

  def test_addition
    a = 1
    b = 1
    assert do
      a + b == 100
    end
  end
end
```

![image](/images/screenshot.png)
