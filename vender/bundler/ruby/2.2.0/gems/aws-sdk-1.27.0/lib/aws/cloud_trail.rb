# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'aws/core'
require 'aws/cloud_trail/config'

module AWS

  # This class is the starting point for working with AWS CloudTrail.
  #
  # To use AWS CloudTrail you must first
  # [sign up here](http://aws.amazon.com/cloudtrail/).
  #
  # For more information about AWS CloudTrail:
  #
  # * [AWS CloudTrail](http://aws.amazon.com/cloudtrail/)
  # * [AWS CloudTrail Documentation](http://aws.amazon.com/documentation/cloudtrail/)
  #
  # # Credentials
  #
  # You can setup default credentials for all AWS services via
  # AWS.config:
  #
  #     AWS.config(
  #       :access_key_id => 'YOUR_ACCESS_KEY_ID',
  #       :secret_access_key => 'YOUR_SECRET_ACCESS_KEY')
  #
  # Or you can set them directly on the AWS::CloudTrail interface:
  #
  #     ct = AWS::CloudTrail.new(
  #       :access_key_id => 'YOUR_ACCESS_KEY_ID',
  #       :secret_access_key => 'YOUR_SECRET_ACCESS_KEY')
  #
  # # Using the Client
  #
  # AWS::CloudTrail does not provide higher level abstractions for CloudTrail at
  # this time.  You can still access all of the API methods using
  # {AWS::CloudTrail::Client}.  Here is how you access the client and make
  # a simple request:
  #
  #       ct = AWS::CloudTrail.new
  #
  #       resp = ct.client.describe_trails
  #       resp[:trail_list].each do |trail|
  #          puts trail
  #       end
  #
  # See {Client} for documentation on all of the supported operations.
  #
  # @!attribute [r] client
  #   @return [Client] the low-level CloudTrail client object
  class CloudTrail

    autoload :Client,  'aws/cloud_trail/client'
    autoload :Errors,  'aws/cloud_trail/errors'
    autoload :Request, 'aws/cloud_trail/request'

    include Core::ServiceInterface

    endpoint_prefix 'cloudtrail'

  end
end
