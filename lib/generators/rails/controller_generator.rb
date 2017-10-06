# frozen_string_literal: true

require 'rails/generators/erb/controller/controller_generator'
require 'rails/generators/rails/controller/controller_generator'
require 'generators/rails/base'

module Erb
  module Generators
    class ControllerGenerator
      include Rails::Base

      def generate_locale_file
        invoke('locale:view', [name]) if configuration.autoload_view_generator_locale
      end

      def generate_test_file
        framework = configuration.test_framework

        return if framework.nil?
        invoke("#{framework}:view", [name]) rescue nil
      end

    end
  end
end

module Rails
  module Generators
    class ControllerGenerator
      include Rails::Base

      def generate_locale_file
        invoke('locale:controller', [name]) if configuration.autoload_controller_generator_locale
      end

      def generate_test_file
        framework = configuration.test_framework

        return if framework.nil?
        invoke("#{framework}:controller", [name]) rescue nil
      end

    end
  end
end
