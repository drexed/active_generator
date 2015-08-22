require 'rails/generators/erb/scaffold/scaffold_generator'

module Erb
  module Generators
    class ScaffoldGenerator

      def generate_locale_file
        invoke("locale:view", [name]) if ActiveGenerator.configuration.autoload_view_generator_locale
      end

    end
  end
end