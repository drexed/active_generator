require 'rails/generators/active_record/model/model_generator'

module ActiveRecord
  module Generators
    class ModelGenerator

      def generate_locale_file
        invoke("locale:model", [name]) if ActiveGenerator.configuration.autoload_model_generator_locale
      end

    end
  end
end