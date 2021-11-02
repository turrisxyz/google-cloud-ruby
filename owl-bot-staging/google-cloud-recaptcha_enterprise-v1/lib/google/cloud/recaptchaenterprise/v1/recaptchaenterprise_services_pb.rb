# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/recaptchaenterprise/v1/recaptchaenterprise.proto for package 'Google.Cloud.RecaptchaEnterprise.V1'
# Original file comments:
# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/recaptchaenterprise/v1/recaptchaenterprise_pb'

module Google
  module Cloud
    module RecaptchaEnterprise
      module V1
        module RecaptchaEnterpriseService
          # Service to determine the likelihood an event is legitimate.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.recaptchaenterprise.v1.RecaptchaEnterpriseService'

            # Creates an Assessment of the likelihood an event is legitimate.
            rpc :CreateAssessment, ::Google::Cloud::RecaptchaEnterprise::V1::CreateAssessmentRequest, ::Google::Cloud::RecaptchaEnterprise::V1::Assessment
            # Annotates a previously created Assessment to provide additional information
            # on whether the event turned out to be authentic or fraudulent.
            rpc :AnnotateAssessment, ::Google::Cloud::RecaptchaEnterprise::V1::AnnotateAssessmentRequest, ::Google::Cloud::RecaptchaEnterprise::V1::AnnotateAssessmentResponse
            # Creates a new reCAPTCHA Enterprise key.
            rpc :CreateKey, ::Google::Cloud::RecaptchaEnterprise::V1::CreateKeyRequest, ::Google::Cloud::RecaptchaEnterprise::V1::Key
            # Returns the list of all keys that belong to a project.
            rpc :ListKeys, ::Google::Cloud::RecaptchaEnterprise::V1::ListKeysRequest, ::Google::Cloud::RecaptchaEnterprise::V1::ListKeysResponse
            # Returns the specified key.
            rpc :GetKey, ::Google::Cloud::RecaptchaEnterprise::V1::GetKeyRequest, ::Google::Cloud::RecaptchaEnterprise::V1::Key
            # Updates the specified key.
            rpc :UpdateKey, ::Google::Cloud::RecaptchaEnterprise::V1::UpdateKeyRequest, ::Google::Cloud::RecaptchaEnterprise::V1::Key
            # Deletes the specified key.
            rpc :DeleteKey, ::Google::Cloud::RecaptchaEnterprise::V1::DeleteKeyRequest, ::Google::Protobuf::Empty
            # Migrates an existing key from reCAPTCHA to reCAPTCHA Enterprise.
            # Once a key is migrated, it can be used from either product. SiteVerify
            # requests are billed as CreateAssessment calls. You must be
            # authenticated as one of the current owners of the reCAPTCHA Site Key, and
            # your user must have the reCAPTCHA Enterprise Admin IAM role in the
            # destination project.
            rpc :MigrateKey, ::Google::Cloud::RecaptchaEnterprise::V1::MigrateKeyRequest, ::Google::Cloud::RecaptchaEnterprise::V1::Key
            # Get some aggregated metrics for a Key. This data can be used to build
            # dashboards.
            rpc :GetMetrics, ::Google::Cloud::RecaptchaEnterprise::V1::GetMetricsRequest, ::Google::Cloud::RecaptchaEnterprise::V1::Metrics
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end