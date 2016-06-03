require "rails/generators"

require "active_generator/version"
require "active_generator/configuration"

module ActiveGenerator

  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configuration=(config)
    @configuration = config
  end

  def self.configure
    yield(configuration)
  end

end

require "generators/active_generator/install/install_generator"

%w(environment initializer service view).each do |generator_name|
  require "generators/#{generator_name}/#{generator_name}_generator"
end

%w(api controller helper job mailer model service task uploader view).each do |generator_name|
  require "generators/locale/#{generator_name}/#{generator_name}_generator"
end

%w(controller helper job mailer model scaffold task).each do |generator_name|
  require "generators/rails/#{generator_name}_generator"
end
