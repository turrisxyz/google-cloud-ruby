# frozen_string_literal: true

# Copyright 2021 Google LLC
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
    module WebSecurityScanner
      module V1beta
        # A ScanConfig resource contains the configurations to launch a scan.
        # @!attribute [rw] name
        #   @return [::String]
        #     The resource name of the ScanConfig. The name follows the format of
        #     'projects/\\{projectId}/scanConfigs/\\{scanConfigId}'. The ScanConfig IDs are
        #     generated by the system.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. The user provided display name of the ScanConfig.
        # @!attribute [rw] max_qps
        #   @return [::Integer]
        #     The maximum QPS during scanning. A valid value ranges from 5 to 20
        #     inclusively. If the field is unspecified or its value is set 0, server will
        #     default to 15. Other values outside of [5, 20] range will be rejected with
        #     INVALID_ARGUMENT error.
        # @!attribute [rw] starting_urls
        #   @return [::Array<::String>]
        #     Required. The starting URLs from which the scanner finds site pages.
        # @!attribute [rw] authentication
        #   @return [::Google::Cloud::WebSecurityScanner::V1beta::ScanConfig::Authentication]
        #     The authentication configuration. If specified, service will use the
        #     authentication configuration during scanning.
        # @!attribute [rw] user_agent
        #   @return [::Google::Cloud::WebSecurityScanner::V1beta::ScanConfig::UserAgent]
        #     The user agent used during scanning.
        # @!attribute [rw] blacklist_patterns
        #   @return [::Array<::String>]
        #     The blacklist URL patterns as described in
        #     https://cloud.google.com/security-scanner/docs/excluded-urls
        # @!attribute [rw] schedule
        #   @return [::Google::Cloud::WebSecurityScanner::V1beta::ScanConfig::Schedule]
        #     The schedule of the ScanConfig.
        # @!attribute [rw] target_platforms
        #   @return [::Array<::Google::Cloud::WebSecurityScanner::V1beta::ScanConfig::TargetPlatform>]
        #     Set of Cloud Platforms targeted by the scan. If empty, APP_ENGINE will be
        #     used as a default.
        # @!attribute [rw] export_to_security_command_center
        #   @return [::Google::Cloud::WebSecurityScanner::V1beta::ScanConfig::ExportToSecurityCommandCenter]
        #     Controls export of scan configurations and results to Cloud Security
        #     Command Center.
        # @!attribute [rw] latest_run
        #   @return [::Google::Cloud::WebSecurityScanner::V1beta::ScanRun]
        #     Latest ScanRun if available.
        # @!attribute [rw] risk_level
        #   @return [::Google::Cloud::WebSecurityScanner::V1beta::ScanConfig::RiskLevel]
        #     The risk level selected for the scan
        class ScanConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Scan authentication configuration.
          # @!attribute [rw] google_account
          #   @return [::Google::Cloud::WebSecurityScanner::V1beta::ScanConfig::Authentication::GoogleAccount]
          #     Authentication using a Google account.
          # @!attribute [rw] custom_account
          #   @return [::Google::Cloud::WebSecurityScanner::V1beta::ScanConfig::Authentication::CustomAccount]
          #     Authentication using a custom account.
          class Authentication
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Describes authentication configuration that uses a Google account.
            # @!attribute [rw] username
            #   @return [::String]
            #     Required. The user name of the Google account.
            # @!attribute [rw] password
            #   @return [::String]
            #     Required. Input only. The password of the Google account. The credential is stored encrypted
            #     and not returned in any response nor included in audit logs.
            class GoogleAccount
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Describes authentication configuration that uses a custom account.
            # @!attribute [rw] username
            #   @return [::String]
            #     Required. The user name of the custom account.
            # @!attribute [rw] password
            #   @return [::String]
            #     Required. Input only. The password of the custom account. The credential is stored encrypted
            #     and not returned in any response nor included in audit logs.
            # @!attribute [rw] login_url
            #   @return [::String]
            #     Required. The login form URL of the website.
            class CustomAccount
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Scan schedule configuration.
          # @!attribute [rw] schedule_time
          #   @return [::Google::Protobuf::Timestamp]
          #     A timestamp indicates when the next run will be scheduled. The value is
          #     refreshed by the server after each run. If unspecified, it will default
          #     to current server time, which means the scan will be scheduled to start
          #     immediately.
          # @!attribute [rw] interval_duration_days
          #   @return [::Integer]
          #     Required. The duration of time between executions in days.
          class Schedule
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Type of user agents used for scanning.
          module UserAgent
            # The user agent is unknown. Service will default to CHROME_LINUX.
            USER_AGENT_UNSPECIFIED = 0

            # Chrome on Linux. This is the service default if unspecified.
            CHROME_LINUX = 1

            # Chrome on Android.
            CHROME_ANDROID = 2

            # Safari on IPhone.
            SAFARI_IPHONE = 3
          end

          # Cloud platforms supported by Cloud Web Security Scanner.
          module TargetPlatform
            # The target platform is unknown. Requests with this enum value will be
            # rejected with INVALID_ARGUMENT error.
            TARGET_PLATFORM_UNSPECIFIED = 0

            # Google App Engine service.
            APP_ENGINE = 1

            # Google Compute Engine service.
            COMPUTE = 2
          end

          # Scan risk levels supported by Cloud Web Security Scanner. LOW impact
          # scanning will minimize requests with the potential to modify data. To
          # achieve the maximum scan coverage, NORMAL risk level is recommended.
          module RiskLevel
            # Use default, which is NORMAL.
            RISK_LEVEL_UNSPECIFIED = 0

            # Normal scanning (Recommended)
            NORMAL = 1

            # Lower impact scanning
            LOW = 2
          end

          # Controls export of scan configurations and results to Cloud Security
          # Command Center.
          module ExportToSecurityCommandCenter
            # Use default, which is ENABLED.
            EXPORT_TO_SECURITY_COMMAND_CENTER_UNSPECIFIED = 0

            # Export results of this scan to Cloud Security Command Center.
            ENABLED = 1

            # Do not export results of this scan to Cloud Security Command Center.
            DISABLED = 2
          end
        end
      end
    end
  end
end
