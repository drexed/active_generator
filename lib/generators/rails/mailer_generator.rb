require 'rails/generators/erb/mailer/mailer_generator'
require 'rails/generators/mailer/mailer_generator'

module Erb
  module Generators
    class MailerGenerator

      def generate_locale_file
        invoke("locale:view", [name]) if ActiveGenerator.configuration.autoload_view_generator_locale
      end

      def generate_test_file
        unless ["test_unit", nil].include?(ActiveGenerator.configuration.test_framework)
          invoke("#{ActiveGenerator.configuration.test_framework}:view", [name]) rescue nil
        end
      end

    end
  end
end

module Rails
  module Generators
    class MailerGenerator

      def generate_locale_file
        invoke("locale:mailer", [name]) if ActiveGenerator.configuration.autoload_mailer_generator_locale
      end

      def generate_test_file
        unless ActiveGenerator.configuration.test_framework.nil?
          invoke("#{ActiveGenerator.configuration.test_framework}:mailer", [name]) rescue nil
        end
      end

    end
  end
end