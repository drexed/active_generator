# frozen_string_literal: true
require 'spec_helper'

describe Locale::ModelGenerator, type: :generator do
  destination(File.expand_path('../../../tmp', __FILE__))

  before(:all) do
    prepare_destination
    run_generator(%w(sample))
    run_generator(%w(v1/social/twitter gb))
  end

  describe '#generator' do
    it 'to be true' do
      sample_path = 'spec/lib/generators/tmp/config/locales/en/models/sample.yml'

      expect_file = File.read('spec/support/generators/locales/models/sample.yml')
      sample_file = File.read(sample_path)

      expect(File.exist?(sample_path)).to eq(true)
      expect(sample_file).to eq(expect_file)
    end

    it 'to be true' do
      sample_path = 'spec/lib/generators/tmp/config/locales/gb/models/v1/social/twitter.yml'

      expect_file = File.read('spec/support/generators/locales/models/twitter.yml')
      sample_file = File.read(sample_path)

      expect(File.exist?(sample_path)).to eq(true)
      expect(sample_file).to eq(expect_file)
    end
  end

end
