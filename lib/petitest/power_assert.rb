require "petitest/power_assert/version"
require "power_assert"

module Petitest
  module PowerAssert
    private

    # @note Override
    def check(**args, &block)
      ::PowerAssert.start(block, assertion_method: __callee__) do |power_assert|
        result = power_assert.yield
        message = power_assert.message
        message = nil if message.empty?
        super(**args, message: message) do
          result
        end
      end
    end
  end
end
