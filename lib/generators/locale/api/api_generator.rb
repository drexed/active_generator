# frozen_string_literal: true
require 'active_generator/base'
require 'generators/locale/base'

module Locale
  class ApiGenerator < Rails::Generators::NamedBase
    include ActiveGenerator::Base
    include Locale::Base

    source_root File.expand_path('../templates', __FILE__)
    argument :language, type: :string, required: false, default: 'en', desc: 'The locale alpha code'

    def create_api_file
      assert_valid_language!
      path = File.join("config/locales/#{language}/apis", namespace_path, "#{file_name}.yml")

      template('api.yml', path)
    end

  end
end
