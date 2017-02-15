require_relative "s3/version"
require 'uri'

module URI
  class S3 < Generic
    URI.scheme_list.merge!("S3" => URI::S3)
  end
end
