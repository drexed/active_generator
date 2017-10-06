# frozen_string_literal: true
require 'rails/generators/rails/task/task_generator'

module Rails
  module Generators
    class TaskGenerator

      def generate_locale_file
        return unless ActiveGenerator.config.autoload_task_generator_locale
        invoke('locale:task', [name])
      end

    end
  end
end
