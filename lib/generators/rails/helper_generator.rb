require 'rails/generators/rails/helper/helper_generator'
require 'generators/rails/base'

module Rails
  module Generators
    class HelperGenerator
      include Rails::Base

      def generate_locale_file
        invoke('locale:helper', [name]) if configuration.autoload_helper_generator_locale
      end

      def generate_test_file
        framework = configuration.test_framework

        return if framework.nil?
        invoke("#{framework}:helper", [name]) rescue nil
      end

    end
  end
end
