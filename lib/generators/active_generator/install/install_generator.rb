module ActiveGenerator
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def copy_initializer_file
      copy_file('install.rb'.freeze, 'config/initializers/active_generator.rb'.freeze)
    end

  end
end