# frozen_string_literal: true
require 'spec_helper'

describe EnvironmentGenerator, type: :generator do
  destination(File.expand_path('../../tmp', __FILE__))

  before(:all) do
    prepare_destination
    run_generator(%w(sample))
    run_generator(%w(staging production))
  end

  it 'to be true' do
    sample_path = 'spec/lib/generators/tmp/config/environments/sample.rb'

    expect_file = File.read('spec/support/generators/environments/sample.rb')
    sample_file = File.read(sample_path)

    expect(File.exist?(sample_path)).to eq(true)
    expect(sample_file).to eq(expect_file)
  end

  it 'to be true' do
    sample_path = 'spec/lib/generators/tmp/config/environments/staging.rb'

    expect_file = File.read('spec/support/generators/environments/staging.rb')
    sample_file = File.read(sample_path)

    expect(File.exist?(sample_path)).to eq(true)
    expect(sample_file).to eq(expect_file)
  end

end
