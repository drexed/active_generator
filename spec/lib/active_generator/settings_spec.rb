# frozen_string_literal: true

require 'spec_helper'

describe ActiveGenerator::Configuration do
  after(:all) do
    ActiveGenerator.configure do |config|
      config.autoload_controller_generator_locale = true
    end
  end

  describe '#configure' do
    it 'to be "91 test"' do
      ActiveGenerator.configurartion.autoload_controller_generator_locale = '91 test'

      expect(ActiveGenerator.config.autoload_controller_generator_locale).to eq('91 test')
    end
  end

end
