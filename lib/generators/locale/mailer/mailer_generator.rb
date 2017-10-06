# frozen_string_literal: true

require 'active_generator/base'
require 'generators/locale/base'

module Locale
  class MailerGenerator < Rails::Generators::NamedBase
    include ActiveGenerator::Base
    include Locale::Base

    source_root File.expand_path('../templates', __FILE__)
    argument :language, type: :string, required: false, default: 'en', desc: 'The locale alpha code'

    def create_mailer_file
      assert_valid_language!
      path = File.join("config/locales/#{language}/mailers", namespace_path, "#{file_name}.yml")

      template('mailer.yml', path)
    end

  end
end
