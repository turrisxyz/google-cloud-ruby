# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/automl/v1/model_evaluation.proto

require 'google/api/resource_pb'
require 'google/cloud/automl/v1/classification_pb'
require 'google/cloud/automl/v1/detection_pb'
require 'google/cloud/automl/v1/text_extraction_pb'
require 'google/cloud/automl/v1/text_sentiment_pb'
require 'google/cloud/automl/v1/translation_pb'
require 'google/protobuf/timestamp_pb'
require 'google/api/annotations_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/automl/v1/model_evaluation.proto", :syntax => :proto3) do
    add_message "google.cloud.automl.v1.ModelEvaluation" do
      optional :name, :string, 1
      optional :annotation_spec_id, :string, 2
      optional :display_name, :string, 15
      optional :create_time, :message, 5, "google.protobuf.Timestamp"
      optional :evaluated_example_count, :int32, 6
      oneof :metrics do
        optional :classification_evaluation_metrics, :message, 8, "google.cloud.automl.v1.ClassificationEvaluationMetrics"
        optional :translation_evaluation_metrics, :message, 9, "google.cloud.automl.v1.TranslationEvaluationMetrics"
        optional :image_object_detection_evaluation_metrics, :message, 12, "google.cloud.automl.v1.ImageObjectDetectionEvaluationMetrics"
        optional :text_sentiment_evaluation_metrics, :message, 11, "google.cloud.automl.v1.TextSentimentEvaluationMetrics"
        optional :text_extraction_evaluation_metrics, :message, 13, "google.cloud.automl.v1.TextExtractionEvaluationMetrics"
      end
    end
  end
end

module Google
  module Cloud
    module AutoML
      module V1
        ModelEvaluation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.ModelEvaluation").msgclass
      end
    end
  end
end