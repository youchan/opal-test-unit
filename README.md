# Opal::Test::Unit

A test suite for Opal. It has Unit::Test like APIs.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'opal-test-unit'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install opal-test-unit

## Usage

**Rakefile**

```ruby
require "opal/test/unit/rake_task"

Opal::Test::Unit::RakeTask.new(:default, File.expand_path("../test", __FILE__))
```

A simple example.

```ruby
# test/test_test.rb

require "opal/test-unit"

class TestTest < Opal::Test::Unit::TestCase
  test "test successful" do
    success = true
    assert(success, "success")
  end
end
```

    $ bundle exec rake

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/youchan/opal-test-unit.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
