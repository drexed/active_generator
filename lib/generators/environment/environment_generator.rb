# frozen_string_literal: true

class EnvironmentGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
  argument :environment, type: :string, required: false, default: nil,
                         desc: 'The environment template to copy'

  def create_environment_file
    assert_valid_environment!
    template('environment.rb', File.join('config/environments', class_path, "#{file_name}.rb"))
  end

  private

  ENVIRONMENTS = %w[development test production].freeze

  ENVIRONMENTS.each do |env|
    define_method("#{env}?") { environment == env }
  end

  def assert_valid_environment!
    return if environment.nil? || ENVIRONMENTS.include?(environment)

    raise ArgumentError, ["Unknown environment: #{environment.inspect}.",
                          "Valid options: #{ENVIRONMENTS.map(&:inspect).join(', ')}"].join(' ')
  end

end
