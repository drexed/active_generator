module Locale
  module Base

    private

    def assert_valid_language!
      unless [2, 4, 5, 6].include?(language.size) && (language =~ /^[A-Za-z-]+$/)
        raise ArgumentError,
              "Unknown language format: #{language.inspect}. Valid format example is: 'en'"
      end
    end

  end
end
