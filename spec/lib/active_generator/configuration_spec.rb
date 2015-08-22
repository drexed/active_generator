require "spec_helper"

describe ActiveGenerator::Configuration do

  after(:all) {
    ActiveGenerator.configure do |config|
      config.autoload_controller_generator_locale = true
    end
  }

  describe "#configure" do
    it "to be '91 test'" do
      ActiveGenerator.configure do |config|
        config.autoload_controller_generator_locale  = "91 test"
      end

      expect(ActiveGenerator.configuration.autoload_controller_generator_locale).to eq("91 test")
    end
  end

end