require 'active_generator/base'
require 'generators/locale/base'

class Locale::HelperGenerator < Rails::Generators::NamedBase
  include ActiveGenerator::Base
  include Locale::Base

  source_root File.expand_path('../templates', __FILE__)
  argument :language, type: :string, required: false, default: 'en', desc: 'The locale alpha code'

  def create_helper_file
    assert_valid_language!
    path = File.join("config/locales/#{language}/helpers", namespace_path, "#{file_name}.yml")

    template('helper.yml', path)
  end

end
