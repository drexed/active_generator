require 'spec_helper'

describe InitializerGenerator, type: :generator do
  destination(File.expand_path('../../tmp', __FILE__))

  before(:all) do
    prepare_destination
    run_generator(%w(sample))
  end

  it 'to be true' do
    sample_path = 'spec/lib/generators/tmp/config/initializers/sample.rb'

    expect_file = File.read('spec/support/generators/initializers/sample.rb')
    sample_file = File.read(sample_path)

    expect(File.exist?(sample_path)).to eq(true)
    expect(sample_file).to eq(expect_file)
  end

end
