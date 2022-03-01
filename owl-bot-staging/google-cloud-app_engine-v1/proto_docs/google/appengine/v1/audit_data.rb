# frozen_string_literal: true

# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module AppEngine
      module V1
        # App Engine admin service audit log.
        # @!attribute [rw] update_service
        #   @return [::Google::Cloud::AppEngine::V1::UpdateServiceMethod]
        #     Detailed information about UpdateService call.
        # @!attribute [rw] create_version
        #   @return [::Google::Cloud::AppEngine::V1::CreateVersionMethod]
        #     Detailed information about CreateVersion call.
        class AuditData
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Detailed information about UpdateService call.
        # @!attribute [rw] request
        #   @return [::Google::Cloud::AppEngine::V1::UpdateServiceRequest]
        #     Update service request.
        class UpdateServiceMethod
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Detailed information about CreateVersion call.
        # @!attribute [rw] request
        #   @return [::Google::Cloud::AppEngine::V1::CreateVersionRequest]
        #     Create version request.
        class CreateVersionMethod
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
