class EnvironmentGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
  argument :environment, type: :string, required: false, default: nil, desc: 'The environment template to copy'

  def create_environment_file
    assert_valid_environment!
    template('environment.rb'.freeze, File.join('config/environments'.freeze, class_path, "#{file_name}.rb"))
  end

  private

  ENVIRONMENTS = %w(development test production)

  ENVIRONMENTS.each do |env|
    define_method("#{env}?") { environment == env }
  end

  def assert_valid_environment!
    unless environment.nil?
      unless ENVIRONMENTS.include?(environment)
        raise ArgumentError,
          "Unknown environment: #{environment.inspect}. Valid environments are: #{ENVIRONMENTS.map(&:inspect).join(', '.freeze)}"
      end
    end
  end

end