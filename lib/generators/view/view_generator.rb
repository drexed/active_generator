# frozen_string_literal: true

require 'fileutils'

class ViewGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
  argument :actions, type: :array, required: false, default: [], desc: 'The pages to generate'

  def create_root_directory
    empty_directory(File.join('app/views', file_name)) if actions.empty?
  end

  def create_view_file
    return if actions.empty?

    actions.each do |filename|
      path = File.join('app/views', class_path, file_name, "#{filename}.html.erb")
      template('view.html.erb', path)
    end
  end

  def generate_locale_file
    invoke('locale:view', [name]) if configuration.autoload_view_generator_locale
  end

  def generate_test_file
    framework = configuration.test_framework

    return if framework.nil?
    invoke("#{framework}:view", [name]) rescue nil
  end

  private

  def configuration
    ActiveGenerator.configuration
  end

end
