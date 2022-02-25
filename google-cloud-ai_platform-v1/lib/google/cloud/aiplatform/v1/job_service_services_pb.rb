# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/aiplatform/v1/job_service.proto for package 'Google.Cloud.AIPlatform.V1'
# Original file comments:
# Copyright 2022 Google LLC
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
require 'google/cloud/aiplatform/v1/job_service_pb'

module Google
  module Cloud
    module AIPlatform
      module V1
        module JobService
          # A service for creating and managing Vertex AI's jobs.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.aiplatform.v1.JobService'

            # Creates a CustomJob. A created CustomJob right away
            # will be attempted to be run.
            rpc :CreateCustomJob, ::Google::Cloud::AIPlatform::V1::CreateCustomJobRequest, ::Google::Cloud::AIPlatform::V1::CustomJob
            # Gets a CustomJob.
            rpc :GetCustomJob, ::Google::Cloud::AIPlatform::V1::GetCustomJobRequest, ::Google::Cloud::AIPlatform::V1::CustomJob
            # Lists CustomJobs in a Location.
            rpc :ListCustomJobs, ::Google::Cloud::AIPlatform::V1::ListCustomJobsRequest, ::Google::Cloud::AIPlatform::V1::ListCustomJobsResponse
            # Deletes a CustomJob.
            rpc :DeleteCustomJob, ::Google::Cloud::AIPlatform::V1::DeleteCustomJobRequest, ::Google::Longrunning::Operation
            # Cancels a CustomJob.
            # Starts asynchronous cancellation on the CustomJob. The server
            # makes a best effort to cancel the job, but success is not
            # guaranteed. Clients can use [JobService.GetCustomJob][google.cloud.aiplatform.v1.JobService.GetCustomJob] or
            # other methods to check whether the cancellation succeeded or whether the
            # job completed despite cancellation. On successful cancellation,
            # the CustomJob is not deleted; instead it becomes a job with
            # a [CustomJob.error][google.cloud.aiplatform.v1.CustomJob.error] value with a [google.rpc.Status.code][google.rpc.Status.code] of 1,
            # corresponding to `Code.CANCELLED`, and [CustomJob.state][google.cloud.aiplatform.v1.CustomJob.state] is set to
            # `CANCELLED`.
            rpc :CancelCustomJob, ::Google::Cloud::AIPlatform::V1::CancelCustomJobRequest, ::Google::Protobuf::Empty
            # Creates a DataLabelingJob.
            rpc :CreateDataLabelingJob, ::Google::Cloud::AIPlatform::V1::CreateDataLabelingJobRequest, ::Google::Cloud::AIPlatform::V1::DataLabelingJob
            # Gets a DataLabelingJob.
            rpc :GetDataLabelingJob, ::Google::Cloud::AIPlatform::V1::GetDataLabelingJobRequest, ::Google::Cloud::AIPlatform::V1::DataLabelingJob
            # Lists DataLabelingJobs in a Location.
            rpc :ListDataLabelingJobs, ::Google::Cloud::AIPlatform::V1::ListDataLabelingJobsRequest, ::Google::Cloud::AIPlatform::V1::ListDataLabelingJobsResponse
            # Deletes a DataLabelingJob.
            rpc :DeleteDataLabelingJob, ::Google::Cloud::AIPlatform::V1::DeleteDataLabelingJobRequest, ::Google::Longrunning::Operation
            # Cancels a DataLabelingJob. Success of cancellation is not guaranteed.
            rpc :CancelDataLabelingJob, ::Google::Cloud::AIPlatform::V1::CancelDataLabelingJobRequest, ::Google::Protobuf::Empty
            # Creates a HyperparameterTuningJob
            rpc :CreateHyperparameterTuningJob, ::Google::Cloud::AIPlatform::V1::CreateHyperparameterTuningJobRequest, ::Google::Cloud::AIPlatform::V1::HyperparameterTuningJob
            # Gets a HyperparameterTuningJob
            rpc :GetHyperparameterTuningJob, ::Google::Cloud::AIPlatform::V1::GetHyperparameterTuningJobRequest, ::Google::Cloud::AIPlatform::V1::HyperparameterTuningJob
            # Lists HyperparameterTuningJobs in a Location.
            rpc :ListHyperparameterTuningJobs, ::Google::Cloud::AIPlatform::V1::ListHyperparameterTuningJobsRequest, ::Google::Cloud::AIPlatform::V1::ListHyperparameterTuningJobsResponse
            # Deletes a HyperparameterTuningJob.
            rpc :DeleteHyperparameterTuningJob, ::Google::Cloud::AIPlatform::V1::DeleteHyperparameterTuningJobRequest, ::Google::Longrunning::Operation
            # Cancels a HyperparameterTuningJob.
            # Starts asynchronous cancellation on the HyperparameterTuningJob. The server
            # makes a best effort to cancel the job, but success is not
            # guaranteed. Clients can use [JobService.GetHyperparameterTuningJob][google.cloud.aiplatform.v1.JobService.GetHyperparameterTuningJob] or
            # other methods to check whether the cancellation succeeded or whether the
            # job completed despite cancellation. On successful cancellation,
            # the HyperparameterTuningJob is not deleted; instead it becomes a job with
            # a [HyperparameterTuningJob.error][google.cloud.aiplatform.v1.HyperparameterTuningJob.error] value with a [google.rpc.Status.code][google.rpc.Status.code]
            # of 1, corresponding to `Code.CANCELLED`, and
            # [HyperparameterTuningJob.state][google.cloud.aiplatform.v1.HyperparameterTuningJob.state] is set to `CANCELLED`.
            rpc :CancelHyperparameterTuningJob, ::Google::Cloud::AIPlatform::V1::CancelHyperparameterTuningJobRequest, ::Google::Protobuf::Empty
            # Creates a BatchPredictionJob. A BatchPredictionJob once created will
            # right away be attempted to start.
            rpc :CreateBatchPredictionJob, ::Google::Cloud::AIPlatform::V1::CreateBatchPredictionJobRequest, ::Google::Cloud::AIPlatform::V1::BatchPredictionJob
            # Gets a BatchPredictionJob
            rpc :GetBatchPredictionJob, ::Google::Cloud::AIPlatform::V1::GetBatchPredictionJobRequest, ::Google::Cloud::AIPlatform::V1::BatchPredictionJob
            # Lists BatchPredictionJobs in a Location.
            rpc :ListBatchPredictionJobs, ::Google::Cloud::AIPlatform::V1::ListBatchPredictionJobsRequest, ::Google::Cloud::AIPlatform::V1::ListBatchPredictionJobsResponse
            # Deletes a BatchPredictionJob. Can only be called on jobs that already
            # finished.
            rpc :DeleteBatchPredictionJob, ::Google::Cloud::AIPlatform::V1::DeleteBatchPredictionJobRequest, ::Google::Longrunning::Operation
            # Cancels a BatchPredictionJob.
            #
            # Starts asynchronous cancellation on the BatchPredictionJob. The server
            # makes the best effort to cancel the job, but success is not
            # guaranteed. Clients can use [JobService.GetBatchPredictionJob][google.cloud.aiplatform.v1.JobService.GetBatchPredictionJob] or
            # other methods to check whether the cancellation succeeded or whether the
            # job completed despite cancellation. On a successful cancellation,
            # the BatchPredictionJob is not deleted;instead its
            # [BatchPredictionJob.state][google.cloud.aiplatform.v1.BatchPredictionJob.state] is set to `CANCELLED`. Any files already
            # outputted by the job are not deleted.
            rpc :CancelBatchPredictionJob, ::Google::Cloud::AIPlatform::V1::CancelBatchPredictionJobRequest, ::Google::Protobuf::Empty
            # Creates a ModelDeploymentMonitoringJob. It will run periodically on a
            # configured interval.
            rpc :CreateModelDeploymentMonitoringJob, ::Google::Cloud::AIPlatform::V1::CreateModelDeploymentMonitoringJobRequest, ::Google::Cloud::AIPlatform::V1::ModelDeploymentMonitoringJob
            # Searches Model Monitoring Statistics generated within a given time window.
            rpc :SearchModelDeploymentMonitoringStatsAnomalies, ::Google::Cloud::AIPlatform::V1::SearchModelDeploymentMonitoringStatsAnomaliesRequest, ::Google::Cloud::AIPlatform::V1::SearchModelDeploymentMonitoringStatsAnomaliesResponse
            # Gets a ModelDeploymentMonitoringJob.
            rpc :GetModelDeploymentMonitoringJob, ::Google::Cloud::AIPlatform::V1::GetModelDeploymentMonitoringJobRequest, ::Google::Cloud::AIPlatform::V1::ModelDeploymentMonitoringJob
            # Lists ModelDeploymentMonitoringJobs in a Location.
            rpc :ListModelDeploymentMonitoringJobs, ::Google::Cloud::AIPlatform::V1::ListModelDeploymentMonitoringJobsRequest, ::Google::Cloud::AIPlatform::V1::ListModelDeploymentMonitoringJobsResponse
            # Updates a ModelDeploymentMonitoringJob.
            rpc :UpdateModelDeploymentMonitoringJob, ::Google::Cloud::AIPlatform::V1::UpdateModelDeploymentMonitoringJobRequest, ::Google::Longrunning::Operation
            # Deletes a ModelDeploymentMonitoringJob.
            rpc :DeleteModelDeploymentMonitoringJob, ::Google::Cloud::AIPlatform::V1::DeleteModelDeploymentMonitoringJobRequest, ::Google::Longrunning::Operation
            # Pauses a ModelDeploymentMonitoringJob. If the job is running, the server
            # makes a best effort to cancel the job. Will mark
            # [ModelDeploymentMonitoringJob.state][google.cloud.aiplatform.v1.ModelDeploymentMonitoringJob.state] to 'PAUSED'.
            rpc :PauseModelDeploymentMonitoringJob, ::Google::Cloud::AIPlatform::V1::PauseModelDeploymentMonitoringJobRequest, ::Google::Protobuf::Empty
            # Resumes a paused ModelDeploymentMonitoringJob. It will start to run from
            # next scheduled time. A deleted ModelDeploymentMonitoringJob can't be
            # resumed.
            rpc :ResumeModelDeploymentMonitoringJob, ::Google::Cloud::AIPlatform::V1::ResumeModelDeploymentMonitoringJobRequest, ::Google::Protobuf::Empty
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end