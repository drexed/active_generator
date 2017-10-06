# frozen_string_literal: true
require 'spec_helper'

describe Rails::Generators::ControllerGenerator, type: :generator do
  destination(File.expand_path('../../tmp', __FILE__))

  before(:all) do
    prepare_destination
    run_generator(%w(sample))
    run_generator(%w(v1/social/twitter))
  end

  describe '#generator' do
    it 'to be true' do
      sample_controller_path = 'spec/lib/generators/tmp/config/locales/en/controllers/sample.yml'
      sample_helper_path = 'spec/lib/generators/tmp/config/locales/en/helpers/sample.yml'
      sample_view_path = 'spec/lib/generators/tmp/config/locales/en/views/sample.yml'

      expect(File.exist?(sample_controller_path)).to eq(true)
      expect(File.exist?(sample_helper_path)).to eq(true)
      expect(File.exist?(sample_view_path)).to eq(true)
    end

    it 'to be true' do
      sample_controller_path = 'spec/lib/generators/tmp/config/locales/en/controllers/v1/social/twitter.yml'
      sample_helper_path = 'spec/lib/generators/tmp/config/locales/en/helpers/v1/social/twitter.yml'
      sample_view_path = 'spec/lib/generators/tmp/config/locales/en/views/v1/social/twitter.yml'

      expect(File.exist?(sample_controller_path)).to eq(true)
      expect(File.exist?(sample_helper_path)).to eq(true)
      expect(File.exist?(sample_view_path)).to eq(true)
    end
  end

end
