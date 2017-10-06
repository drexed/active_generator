# frozen_string_literal: true
require 'spec_helper'

describe ServiceGenerator, type: :generator do
  destination(File.expand_path('../../tmp', __FILE__))

  before(:all) do
    prepare_destination
    run_generator(%w(sample))
    run_generator(%w(v1/social/twitter))
  end

  describe '#generator' do
    it 'to be true' do
      locale_path = 'spec/lib/generators/tmp/config/locales/en/services/sample.yml'
      sample_path = 'spec/lib/generators/tmp/app/services/sample.rb'

      expect_file = File.read('spec/support/generators/services/sample.rb')
      sample_file = File.read(sample_path)

      expect(File.exist?(locale_path)).to eq(true)
      expect(File.exist?(sample_path)).to eq(true)
      expect(sample_file).to eq(expect_file)
    end

    it 'to be true' do
      locale_path = 'spec/lib/generators/tmp/config/locales/en/services/v1/social/twitter.yml'
      sample_path = 'spec/lib/generators/tmp/app/services/v1/social/twitter.rb'

      expect_file = File.read('spec/support/generators/services/twitter.rb')
      sample_file = File.read(sample_path)

      expect(File.exist?(locale_path)).to eq(true)
      expect(File.exist?(sample_path)).to eq(true)
      expect(sample_file).to eq(expect_file)
    end
  end

end
