module Opal::Test::Unit
  class AssertFailed < RuntimeError
    attr_reader :expected, :actual

    def initialize(expected, actual)
      @expected = expected
      @actual = actual
    end
  end

  module Assertions
    def assert(cond, message="")
      unless cond
        raise AssertFailed.new(true, cond, message)
      end
    end

    def refute(cond, message="")
      if cond
        raise AssertFailed.new(true, cond, message)
      end
    end

    def assert_false(cond, message="")
      unless cond == false
        raise AssertFailed.new(true, cond, message)
      end
    end

    def assert_equal(expected, actual, message="")
      unless expected == actual
        raise AssertFailed.new(expected, actual, message)
      end
    end

    def assert_kind_of(klass, object, message="")
      unless object.kind_of?(klass)
        raise AssertFailed.new(klass, object.class, message)
      end
    end

    def assert_raises(exception, message="", &block)
      raises = false
      begin
        block.call
      rescue exception => e
        raises = true
      end

      unless raises
        raise AssertFailed.new("#{exception} will raise.", "no excetion raises.")
      end
    end
  end
end
