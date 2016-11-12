module ActiveGenerator
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def copy_initializer_file
      copy_file('install.rb', 'config/initializers/active_generator.rb')
    end

  end
end