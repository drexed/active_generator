# frozen_string_literal: true
require 'rails/generators/job/job_generator'
require 'generators/rails/base'

module Rails
  module Generators
    class JobGenerator
      include Rails::Base

      def generate_locale_file
        invoke('locale:job', [name]) if configuration.autoload_job_generator_locale
      end

      def generate_test_file
        framework = configuration.test_framework

        return if framework.nil?
        invoke("#{framework}:job", [name]) rescue nil
      end
    end
  end
end
