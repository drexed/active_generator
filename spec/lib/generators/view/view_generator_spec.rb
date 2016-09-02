require 'spec_helper'

describe ViewGenerator, type: :generator do
  destination(File.expand_path('../../tmp', __FILE__))

  before(:all) do
    prepare_destination
    run_generator(%w(sample))
    run_generator(%w(v1/social/twitter index))
  end

  it 'to be true' do
    locale_path = 'spec/lib/generators/tmp/config/locales/en/views/sample.yml'
    sample_path = 'spec/lib/generators/tmp/app/views/sample'

    expect(File.exist?(locale_path)).to eq(true)
    expect(File.directory?(sample_path)).to eq(true)
  end

  it 'to be true' do
    locale_path = 'spec/lib/generators/tmp/config/locales/en/views/v1/social/twitter.yml'
    sample_path = 'spec/lib/generators/tmp/app/views/v1/social/twitter/index.html.erb'

    expect_file = File.read('spec/support/generators/views/index.html.erb')
    sample_file = File.read(sample_path)

    expect(File.exist?(locale_path)).to eq(true)
    expect(File.exist?(sample_path)).to eq(true)
    expect(sample_file).to eq(expect_file)
  end

end
