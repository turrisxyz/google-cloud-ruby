# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/monitoring/dashboard/v1/xychart.proto

require 'google/api/field_behavior_pb'
require 'google/monitoring/dashboard/v1/metrics_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/monitoring/dashboard/v1/xychart.proto", :syntax => :proto3) do
    add_message "google.monitoring.dashboard.v1.XyChart" do
      repeated :data_sets, :message, 1, "google.monitoring.dashboard.v1.XyChart.DataSet"
      optional :timeshift_duration, :message, 4, "google.protobuf.Duration"
      repeated :thresholds, :message, 5, "google.monitoring.dashboard.v1.Threshold"
      optional :x_axis, :message, 6, "google.monitoring.dashboard.v1.XyChart.Axis"
      optional :y_axis, :message, 7, "google.monitoring.dashboard.v1.XyChart.Axis"
      optional :y2_axis, :message, 9, "google.monitoring.dashboard.v1.XyChart.Axis"
      optional :chart_options, :message, 8, "google.monitoring.dashboard.v1.ChartOptions"
    end
    add_message "google.monitoring.dashboard.v1.XyChart.DataSet" do
      optional :time_series_query, :message, 1, "google.monitoring.dashboard.v1.TimeSeriesQuery"
      optional :plot_type, :enum, 2, "google.monitoring.dashboard.v1.XyChart.DataSet.PlotType"
      optional :legend_template, :string, 3
      optional :min_alignment_period, :message, 4, "google.protobuf.Duration"
      optional :target_axis, :enum, 5, "google.monitoring.dashboard.v1.XyChart.DataSet.TargetAxis"
    end
    add_enum "google.monitoring.dashboard.v1.XyChart.DataSet.PlotType" do
      value :PLOT_TYPE_UNSPECIFIED, 0
      value :LINE, 1
      value :STACKED_AREA, 2
      value :STACKED_BAR, 3
      value :HEATMAP, 4
    end
    add_enum "google.monitoring.dashboard.v1.XyChart.DataSet.TargetAxis" do
      value :TARGET_AXIS_UNSPECIFIED, 0
      value :Y1, 1
      value :Y2, 2
    end
    add_message "google.monitoring.dashboard.v1.XyChart.Axis" do
      optional :label, :string, 1
      optional :scale, :enum, 2, "google.monitoring.dashboard.v1.XyChart.Axis.Scale"
    end
    add_enum "google.monitoring.dashboard.v1.XyChart.Axis.Scale" do
      value :SCALE_UNSPECIFIED, 0
      value :LINEAR, 1
      value :LOG10, 2
    end
    add_message "google.monitoring.dashboard.v1.ChartOptions" do
      optional :mode, :enum, 1, "google.monitoring.dashboard.v1.ChartOptions.Mode"
    end
    add_enum "google.monitoring.dashboard.v1.ChartOptions.Mode" do
      value :MODE_UNSPECIFIED, 0
      value :COLOR, 1
      value :X_RAY, 2
      value :STATS, 3
    end
  end
end

module Google
  module Cloud
    module Monitoring
      module Dashboard
        module V1
          XyChart = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.XyChart").msgclass
          XyChart::DataSet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.XyChart.DataSet").msgclass
          XyChart::DataSet::PlotType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.XyChart.DataSet.PlotType").enummodule
          XyChart::DataSet::TargetAxis = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.XyChart.DataSet.TargetAxis").enummodule
          XyChart::Axis = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.XyChart.Axis").msgclass
          XyChart::Axis::Scale = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.XyChart.Axis.Scale").enummodule
          ChartOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.ChartOptions").msgclass
          ChartOptions::Mode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.ChartOptions.Mode").enummodule
        end
      end
    end
  end
end
