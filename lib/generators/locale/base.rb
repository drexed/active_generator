# frozen_string_literal: true

module Locale
  module Base

    private

    def assert_valid_language!
      return if [2, 4, 5, 6].include?(language.size) && /^[A-Za-z-]+$/.match?(language)

      raise ArgumentError,
            "Unknown language format: #{language.inspect}. Valid format example is: 'en'"
    end

  end
end
