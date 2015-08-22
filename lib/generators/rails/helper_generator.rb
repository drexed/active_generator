require 'rails/generators/rails/helper/helper_generator'

module Rails
  module Generators
    class HelperGenerator

      def generate_locale_file
        invoke("locale:helper", [name]) if ActiveGenerator.configuration.autoload_helper_generator_locale
      end

    end
  end
end