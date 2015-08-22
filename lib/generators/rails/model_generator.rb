require 'rails/generators/rails/model/model_generator'

module Rails
  module Generators
    class ModelGenerator

      def generate_locale_file
        invoke("locale:model", [name]) if ActiveGenerator.configuration.autoload_model_generator_locale
      end

    end
  end
end