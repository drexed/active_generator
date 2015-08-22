require 'rails/generators/erb/mailer/mailer_generator'
require 'rails/generators/mailer/mailer_generator'

module Erb
  module Generators
    class MailerGenerator

      def generate_locale_file
        invoke("locale:view", [name]) if ActiveGenerator.configuration.autoload_view_generator_locale
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

    end
  end
end