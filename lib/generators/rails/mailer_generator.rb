require 'rails/generators/erb/mailer/mailer_generator'
require 'rails/generators/mailer/mailer_generator'

module Erb
  module Generators
    class MailerGenerator

      def generate_locale_file
        invoke('locale:view', [name]) if configuration.autoload_view_generator_locale
      end

      def generate_test_file
        framework = configuration.test_framework

        return if framework.nil?
        invoke("#{framework}:view", [name]) rescue nil
      end

      private

      def configuration
        ActiveGenerator.configuration
      end

    end
  end
end

module Rails
  module Generators
    class MailerGenerator

      def generate_locale_file
        invoke('locale:mailer', [name]) if configuration.autoload_mailer_generator_locale
      end

      def generate_test_file
        framework = configuration.test_framework

        return if framework.nil?
        invoke("#{framework}:mailer", [name]) rescue nil
      end

      private

      def configuration
        ActiveGenerator.configuration
      end

    end
  end
end
