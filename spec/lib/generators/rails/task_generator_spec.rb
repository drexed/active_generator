require "spec_helper"

describe Rails::Generators::TaskGenerator, type: :generator do
  destination(File.expand_path("../../tmp", __FILE__))

  before(:all) do
    prepare_destination
    run_generator(%w(sample))
    run_generator(%w(v1/social/twitter))
  end

  it "to be true" do
    sample_path = "spec/lib/generators/tmp/config/locales/en/tasks/sample.yml"

    expect(File.exist?(sample_path)).to eq(true)
  end

  it "to be true" do
    sample_path = "spec/lib/generators/tmp/config/locales/en/tasks/v1/social/twitter.yml"

    expect(File.exist?(sample_path)).to eq(true)
  end

end
