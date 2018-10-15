require "opal"
require "rake"
require_relative "runner"

module Opal::Test::Unit
  class RakeTask
    include Rake::DSL
    DEFAULT_NAME = "test:opal"
    attr_reader :rake_task

    def initialize(name = DEFAULT_NAME, directory, **options)
      runner = Opal::Test::Unit::Runner.new(directory, **options)
      desc "Run test cases on opal"
      @rake_task = task name do
        runner.run
      end
    end
  end
end
