# frozen_string_literal: true
require 'spec_helper'

describe InitializerGenerator, type: :generator do
  destination(File.expand_path('../../tmp', __FILE__))

  before(:all) do
    prepare_destination
    run_generator(%w(sample))
  end

  let(:sample_path) { 'spec/lib/generators/tmp/config/initializers/sample.rb' }

  describe '#generator' do
    it 'to be true when sample file exists' do
      expect(File.exist?(sample_path)).to eq(true)
    end

    it 'to be the same as the expected file' do
      expect_file = File.read('spec/support/generators/initializers/sample.rb')
      sample_file = File.read(sample_path)

      expect(sample_file).to eq(expect_file)
    end
  end

end
