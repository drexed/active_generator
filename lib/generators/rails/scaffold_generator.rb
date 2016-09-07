require 'rails/generators/erb/scaffold/scaffold_generator'
require 'generators/rails/base'

module Erb
  module Generators
    class ScaffoldGenerator
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
