require 'rails/generators/active_record/model/model_generator'

module ActiveRecord
  module Generators
    class ModelGenerator

      def create_migration_file
        # return unless options[:migration] && options[:parent].nil?
        attributes.each { |a| a.attr_options.delete(:index) if a.reference? && !a.has_index? } if options[:indexes] == false
        migration_template "../../migration/templates/create_table_migration.rb", "db/migrate/create_#{table_name}.rb"
      end

      def generate_locale_file
        invoke("locale:model", [name]) if ActiveGenerator.configuration.autoload_model_generator_locale
      end

    end
  end
end