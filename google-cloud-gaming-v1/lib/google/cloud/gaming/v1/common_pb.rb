# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/gaming/v1/common.proto

require 'google/api/field_behavior_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/gaming/v1/common.proto", :syntax => :proto3) do
    add_message "google.cloud.gaming.v1.OperationMetadata" do
      optional :create_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :target, :string, 3
      optional :verb, :string, 4
      optional :status_message, :string, 5
      optional :requested_cancellation, :bool, 6
      optional :api_version, :string, 7
      repeated :unreachable, :string, 8
      map :operation_status, :string, :message, 9, "google.cloud.gaming.v1.OperationStatus"
    end
    add_message "google.cloud.gaming.v1.OperationStatus" do
      optional :done, :bool, 1
      optional :error_code, :enum, 2, "google.cloud.gaming.v1.OperationStatus.ErrorCode"
      optional :error_message, :string, 3
    end
    add_enum "google.cloud.gaming.v1.OperationStatus.ErrorCode" do
      value :ERROR_CODE_UNSPECIFIED, 0
      value :INTERNAL_ERROR, 1
      value :PERMISSION_DENIED, 2
      value :CLUSTER_CONNECTION, 3
    end
    add_message "google.cloud.gaming.v1.LabelSelector" do
      map :labels, :string, :string, 1
    end
    add_message "google.cloud.gaming.v1.RealmSelector" do
      repeated :realms, :string, 1
    end
    add_message "google.cloud.gaming.v1.Schedule" do
      optional :start_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :cron_job_duration, :message, 3, "google.protobuf.Duration"
      optional :cron_spec, :string, 4
    end
    add_message "google.cloud.gaming.v1.SpecSource" do
      optional :game_server_config_name, :string, 1
      optional :name, :string, 2
    end
    add_message "google.cloud.gaming.v1.TargetDetails" do
      optional :game_server_cluster_name, :string, 1
      optional :game_server_deployment_name, :string, 2
      repeated :fleet_details, :message, 3, "google.cloud.gaming.v1.TargetDetails.TargetFleetDetails"
    end
    add_message "google.cloud.gaming.v1.TargetDetails.TargetFleetDetails" do
      optional :fleet, :message, 1, "google.cloud.gaming.v1.TargetDetails.TargetFleetDetails.TargetFleet"
      optional :autoscaler, :message, 2, "google.cloud.gaming.v1.TargetDetails.TargetFleetDetails.TargetFleetAutoscaler"
    end
    add_message "google.cloud.gaming.v1.TargetDetails.TargetFleetDetails.TargetFleet" do
      optional :name, :string, 1
      optional :spec_source, :message, 2, "google.cloud.gaming.v1.SpecSource"
    end
    add_message "google.cloud.gaming.v1.TargetDetails.TargetFleetDetails.TargetFleetAutoscaler" do
      optional :name, :string, 1
      optional :spec_source, :message, 2, "google.cloud.gaming.v1.SpecSource"
    end
    add_message "google.cloud.gaming.v1.TargetState" do
      repeated :details, :message, 1, "google.cloud.gaming.v1.TargetDetails"
    end
    add_message "google.cloud.gaming.v1.DeployedFleetDetails" do
      optional :deployed_fleet, :message, 1, "google.cloud.gaming.v1.DeployedFleetDetails.DeployedFleet"
      optional :deployed_autoscaler, :message, 2, "google.cloud.gaming.v1.DeployedFleetDetails.DeployedFleetAutoscaler"
    end
    add_message "google.cloud.gaming.v1.DeployedFleetDetails.DeployedFleet" do
      optional :fleet, :string, 1
      optional :fleet_spec, :string, 2
      optional :spec_source, :message, 3, "google.cloud.gaming.v1.SpecSource"
      optional :status, :message, 5, "google.cloud.gaming.v1.DeployedFleetDetails.DeployedFleet.DeployedFleetStatus"
    end
    add_message "google.cloud.gaming.v1.DeployedFleetDetails.DeployedFleet.DeployedFleetStatus" do
      optional :ready_replicas, :int64, 1
      optional :allocated_replicas, :int64, 2
      optional :reserved_replicas, :int64, 3
      optional :replicas, :int64, 4
    end
    add_message "google.cloud.gaming.v1.DeployedFleetDetails.DeployedFleetAutoscaler" do
      optional :autoscaler, :string, 1
      optional :spec_source, :message, 4, "google.cloud.gaming.v1.SpecSource"
      optional :fleet_autoscaler_spec, :string, 3
    end
  end
end

module Google
  module Cloud
    module Gaming
      module V1
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.OperationMetadata").msgclass
        OperationStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.OperationStatus").msgclass
        OperationStatus::ErrorCode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.OperationStatus.ErrorCode").enummodule
        LabelSelector = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.LabelSelector").msgclass
        RealmSelector = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.RealmSelector").msgclass
        Schedule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.Schedule").msgclass
        SpecSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.SpecSource").msgclass
        TargetDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.TargetDetails").msgclass
        TargetDetails::TargetFleetDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.TargetDetails.TargetFleetDetails").msgclass
        TargetDetails::TargetFleetDetails::TargetFleet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.TargetDetails.TargetFleetDetails.TargetFleet").msgclass
        TargetDetails::TargetFleetDetails::TargetFleetAutoscaler = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.TargetDetails.TargetFleetDetails.TargetFleetAutoscaler").msgclass
        TargetState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.TargetState").msgclass
        DeployedFleetDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.DeployedFleetDetails").msgclass
        DeployedFleetDetails::DeployedFleet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.DeployedFleetDetails.DeployedFleet").msgclass
        DeployedFleetDetails::DeployedFleet::DeployedFleetStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.DeployedFleetDetails.DeployedFleet.DeployedFleetStatus").msgclass
        DeployedFleetDetails::DeployedFleetAutoscaler = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gaming.v1.DeployedFleetDetails.DeployedFleetAutoscaler").msgclass
      end
    end
  end
end
