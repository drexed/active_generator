require 'rails/generators/job/job_generator'

module Rails
  module Generators
    class JobGenerator

      def generate_locale_file
        invoke('locale:job', [name]) if ActiveGenerator.configuration.autoload_job_generator_locale
      end

      def generate_test_file
        unless ActiveGenerator.configuration.test_framework.nil?
          invoke("#{ActiveGenerator.configuration.test_framework}:job", [name]) rescue nil
        end
      end

    end
  end
end