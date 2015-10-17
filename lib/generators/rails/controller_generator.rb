require 'rails/generators/erb/controller/controller_generator'
require 'rails/generators/rails/controller/controller_generator'

module Erb
  module Generators
    class ControllerGenerator

      def generate_locale_file
        invoke('locale:view'.freeze, [name]) if ActiveGenerator.configuration.autoload_view_generator_locale
      end

      def generate_test_file
        unless ActiveGenerator.configuration.test_framework.nil?
          invoke("#{ActiveGenerator.configuration.test_framework}:view", [name]) rescue nil
        end
      end

    end
  end
end

module Rails
  module Generators
    class ControllerGenerator

      def generate_locale_file
        invoke('locale:controller'.freeze, [name]) if ActiveGenerator.configuration.autoload_controller_generator_locale
      end

      def generate_test_file
        unless ActiveGenerator.configuration.test_framework.nil?
          invoke("#{ActiveGenerator.configuration.test_framework}:controller", [name]) rescue nil
        end
      end

    end
  end
end