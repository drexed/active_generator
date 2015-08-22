require 'rails/generators/job/job_generator'

module Rails
  module Generators
    class JobGenerator

      def generate_locale_file
        invoke("locale:job", [name]) if ActiveGenerator.configuration.autoload_job_generator_locale
      end

    end
  end
end