class InitializerGenerator < Rails::Generators::NamedBase
  source_root File.expand_path("../templates", __FILE__)

  def copy_initializer_file
    copy_file("initializer.rb", File.join("config/initializers", class_path, "#{file_name}.rb"))
  end

end
