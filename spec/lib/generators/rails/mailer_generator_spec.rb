require 'spec_helper'

describe Rails::Generators::MailerGenerator, type: :generator do
  destination(File.expand_path("../../tmp", __FILE__))

  before(:all) do
    prepare_destination
    run_generator(%w(sample))
    run_generator(%w(v1/social/twitter))
  end

  it "to be true" do
    sample_mailer_path = "spec/lib/generators/tmp/config/locales/en/mailers/sample.yml"
    sample_view_path   = "spec/lib/generators/tmp/config/locales/en/views/sample.yml"

    expect(File.exist?(sample_mailer_path)).to eq(true)
    expect(File.exist?(sample_view_path)).to eq(true)
  end

  it "to be true" do
    sample_mailer_path = "spec/lib/generators/tmp/config/locales/en/mailers/v1/social/twitter.yml"
    sample_view_path   = "spec/lib/generators/tmp/config/locales/en/views/v1/social/twitter.yml"

    expect(File.exist?(sample_mailer_path)).to eq(true)
    expect(File.exist?(sample_view_path)).to eq(true)
  end

end