require 'fileutils'

class ViewGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
  argument :actions, type: :array, required: false, default: [], desc: 'The pages to generate'

  def create_root_directory
    empty_directory(File.join('app/views', file_name)) if actions.empty?
  end

  def create_view_file
    unless actions.empty?
      actions.each do |filename|
        template('view.html.erb', File.join('app/views', class_path, file_name, "#{filename}.html.erb"))
      end
    end
  end

  def generate_locale_file
    invoke('locale:view', [name]) if ActiveGenerator.configuration.autoload_view_generator_locale
  end

  def generate_test_file
    unless ActiveGenerator.configuration.test_framework.nil?
      invoke("#{ActiveGenerator.configuration.test_framework}:view", [name]) rescue nil
    end
  end

end