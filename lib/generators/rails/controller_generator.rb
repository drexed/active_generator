require 'rails/generators/erb/controller/controller_generator'
require 'rails/generators/rails/controller/controller_generator'

module Erb
  module Generators
    class ControllerGenerator

      def generate_locale_file
        invoke("locale:view", [name]) if ActiveGenerator.configuration.autoload_view_generator_locale
      end

    end
  end
end

module Rails
  module Generators
    class ControllerGenerator

      def generate_locale_file
        invoke("locale:controller", [name]) if ActiveGenerator.configuration.autoload_controller_generator_locale
      end

    end
  end
end