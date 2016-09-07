require 'active_generator/base'
require 'generators/locale/base'

module Locale
  class JobGenerator < Rails::Generators::NamedBase
    include ActiveGenerator::Base
    include Locale::Base

    source_root File.expand_path('../templates', __FILE__)
    argument :language, type: :string, required: false, default: 'en', desc: 'The locale alpha code'

    def create_job_file
      assert_valid_language!
      path = File.join("config/locales/#{language}/jobs", namespace_path, "#{file_name}.yml")

      template('job.yml', path)
    end

  end
end
