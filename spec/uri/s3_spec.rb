require "spec_helper"

RSpec.describe URI::S3 do
  it "has a version number" do
    expect(URI::S3::VERSION).not_to be nil
  end

  let(:uri_s3) { URI("s3://bucket/prefix") }
  subject { uri_s3 }

  it { is_expected.to be_a(URI::S3) }
  it { expect(uri_s3.scheme).to eq('s3') }
  it { expect(uri_s3.host).to eq('bucket') }
  it { expect(uri_s3.path).to eq('/prefix') }
end
