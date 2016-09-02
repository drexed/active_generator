require 'rails/generators/erb/scaffold/scaffold_generator'

module Erb
  module Generators
    class ScaffoldGenerator

      def generate_locale_file
        invoke('locale:view', [name]) if ActiveGenerator.configuration.autoload_view_generator_locale
      end

      def generate_test_file
        unless ActiveGenerator.configuration.test_framework.nil?
          invoke("#{ActiveGenerator.configuration.test_framework}:view", [name]) rescue nil
        end
      end

    end
  end
end
