require "petitest/power_assert/version"
require "power_assert"

module Petitest
  module PowerAssert
    private

    # @note Override
    def check(message, &block)
      ::PowerAssert.start(block, assertion_method: __callee__) do |power_assert|
        result = power_assert.yield
        message = power_assert.message unless power_assert.message.empty?
        super(message) do
          result
        end
      end
    end
  end
end
