# frozen_string_literal: true

require 'spec_helper'

describe EnvironmentGenerator, type: :generator do
  destination(File.expand_path('../../tmp', __FILE__))

  before(:all) do
    prepare_destination
    run_generator(%w(sample))
    run_generator(%w(staging production))
  end

  let(:sample_path) { 'spec/lib/generators/tmp/config/environments/sample.rb' }
  let(:staging_path) { 'spec/lib/generators/tmp/config/environments/staging.rb' }

  describe '#generator' do
    it 'to be true when sample file exists' do
      expect(File.exist?(sample_path)).to eq(true)
    end

    it 'to be the same as the expected file' do
      expect_file = File.read('spec/support/generators/environments/sample.rb')
      sample_file = File.read(sample_path)

      expect(sample_file).to eq(expect_file)
    end

    it 'to be true when staging file exists' do
      expect(File.exist?(staging_path)).to eq(true)
    end

    it 'to be the same as the expected file' do
      expect_file = File.read('spec/support/generators/environments/staging.rb')
      sample_file = File.read(staging_path)

      expect(sample_file).to eq(expect_file)
    end
  end

end
