# frozen_string_literal: true

require 'rails/generators/erb/mailer/mailer_generator'
require 'rails/generators/mailer/mailer_generator'
require 'generators/rails/base'

module Erb
  module Generators
    class MailerGenerator
      include Rails::Base

      def generate_locale_file
        invoke('locale:view', [expanded_name]) if configuration.autoload_view_generator_locale
      end

      def generate_test_file
        framework = configuration.test_framework

        return if framework.nil?

        invoke("#{framework}:view", [expanded_name]) rescue nil
      end

      private

      def expanded_name
        "#{name}_mailer"
      end

    end
  end
end

module Rails
  module Generators
    class MailerGenerator
      include Rails::Base

      def generate_locale_file
        invoke('locale:mailer', [name]) if configuration.autoload_mailer_generator_locale
      end

      def generate_test_file
        framework = configuration.test_framework

        return if framework.nil?

        invoke("#{framework}:mailer", [name]) rescue nil
      end

    end
  end
end
