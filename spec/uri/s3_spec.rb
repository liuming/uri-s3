describe URI::S3 do
  describe "URI.scheme_list" do
    subject { URI.scheme_list }
    it { is_expected.to include("S3" => described_class) }
  end

  describe "initialize from s3 url" do
    subject { URI('s3://bucket/path/object') }
    it { is_expected.to be_an_instance_of(URI::S3) }
  end

  describe "#bucket" do
    subject { URI('s3://bucket/path/object').bucket }
    it { is_expected.to eq 'bucket' }
  end
end
