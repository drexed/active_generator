require 'spec_helper'

describe ActiveGenerator::Settings do

  after(:all) do
    ActiveGenerator::Settings.configure do |config|
      config.autoload_controller_generator_locale = true
    end
  end

  describe '#configure' do
    it 'to be "91 test"' do
      ActiveGenerator::Settings.configure do |config|
        config.autoload_controller_generator_locale = '91 test'
      end

      expect(ActiveGenerator::Settings.config.autoload_controller_generator_locale).to eq('91 test')
    end
  end

end
