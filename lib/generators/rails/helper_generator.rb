require 'rails/generators/rails/helper/helper_generator'

module Rails
  module Generators
    class HelperGenerator

      def generate_locale_file
        invoke('locale:helper'.freeze, [name]) if ActiveGenerator.configuration.autoload_helper_generator_locale
      end

      def generate_test_file
        unless ActiveGenerator.configuration.test_framework.nil?
          invoke("#{ActiveGenerator.configuration.test_framework}:helper", [name]) rescue nil
        end
      end

    end
  end
end