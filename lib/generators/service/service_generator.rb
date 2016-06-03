class ServiceGenerator < Rails::Generators::NamedBase
  source_root File.expand_path("../templates", __FILE__)

  def create_service_file
    template("service.rb", File.join("app/services", class_path, "#{file_name}.rb"))
  end

  def generate_locale_file
    invoke("locale:service", [name]) if ActiveGenerator.configuration.autoload_service_generator_locale
  end

end
