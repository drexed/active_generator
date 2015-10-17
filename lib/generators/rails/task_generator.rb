require 'rails/generators/rails/task/task_generator'

module Rails
  module Generators
    class TaskGenerator

      def generate_locale_file
        invoke('locale:task'.freeze, [name]) if ActiveGenerator.configuration.autoload_task_generator_locale
      end

    end
  end
end