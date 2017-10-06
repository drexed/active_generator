# frozen_string_literal: true

class ServiceGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  def create_service_file
    template('service.rb', File.join('app/services', class_path, "#{file_name}.rb"))
  end

  def generate_locale_file
    return unless ActiveGenerator.configuration.autoload_service_generator_locale
    invoke('locale:service', [name])
  end

end
