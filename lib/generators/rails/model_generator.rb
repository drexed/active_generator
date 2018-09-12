# frozen_string_literal: true

require 'rails/generators/active_record/model/model_generator'
require 'generators/rails/base'

module ActiveRecord
  module Generators
    class ModelGenerator
      include Rails::Base

      def create_migration_file
        # return unless options[:migration] && options[:parent].nil?

        if options[:indexes] == false
          attributes.each do |attr|
            attr.attr_options.delete(:index) if attr.reference? && !attr.has_index?
          end
        end

        path = "db/migrate/create_#{table_name}.rb"

        migration_template('../../migration/templates/create_table_migration.rb', path)
      end

      def generate_locale_file
        invoke('locale:model', [name]) if configuration.autoload_model_generator_locale
      end

      def generate_test_file
        framework = configuration.test_framework

        return if framework.nil?

        invoke("#{framework}:model", [name]) rescue nil
      end

    end
  end
end
