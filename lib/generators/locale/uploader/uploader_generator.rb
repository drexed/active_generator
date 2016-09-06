require 'active_generator/base'
require 'generators/locale/base'

class Locale::UploaderGenerator < Rails::Generators::NamedBase
  include ActiveGenerator::Base
  include Locale::Base

  source_root File.expand_path('../templates', __FILE__)
  argument :language, type: :string, required: false, default: 'en', desc: 'The locale alpha code'

  def create_uploader_file
    assert_valid_language!
    path = File.join("config/locales/#{language}/uploaders", namespace_path, "#{file_name}.yml")

    template('uploader.yml', path)
  end

end
