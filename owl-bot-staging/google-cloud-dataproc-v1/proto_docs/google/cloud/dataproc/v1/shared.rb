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
    module Dataproc
      module V1
        # Runtime configuration for a workload.
        # @!attribute [rw] version
        #   @return [::String]
        #     Optional. Version of the batch runtime.
        # @!attribute [rw] container_image
        #   @return [::String]
        #     Optional. Optional custom container image for the job runtime environment. If
        #     not specified, a default container image will be used.
        # @!attribute [rw] properties
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. A mapping of property names to values, which are used to configure workload
        #     execution.
        class RuntimeConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class PropertiesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Environment configuration for a workload.
        # @!attribute [rw] execution_config
        #   @return [::Google::Cloud::Dataproc::V1::ExecutionConfig]
        #     Optional. Execution configuration for a workload.
        # @!attribute [rw] peripherals_config
        #   @return [::Google::Cloud::Dataproc::V1::PeripheralsConfig]
        #     Optional. Peripherals configuration that workload has access to.
        class EnvironmentConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Execution configuration for a workload.
        # @!attribute [rw] service_account
        #   @return [::String]
        #     Optional. Service account that used to execute workload.
        # @!attribute [rw] network_uri
        #   @return [::String]
        #     Optional. Network URI to connect workload to.
        # @!attribute [rw] subnetwork_uri
        #   @return [::String]
        #     Optional. Subnetwork URI to connect workload to.
        # @!attribute [rw] network_tags
        #   @return [::Array<::String>]
        #     Optional. Tags used for network traffic control.
        # @!attribute [rw] kms_key
        #   @return [::String]
        #     Optional. The Cloud KMS key to use for encryption.
        class ExecutionConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Spark History Server configuration for the workload.
        # @!attribute [rw] dataproc_cluster
        #   @return [::String]
        #     Optional. Resource name of an existing Dataproc Cluster to act as a Spark History
        #     Server for the workload.
        #
        #     Example:
        #
        #     * `projects/[project_id]/regions/[region]/clusters/[cluster_name]`
        class SparkHistoryServerConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Auxiliary services configuration for a workload.
        # @!attribute [rw] metastore_service
        #   @return [::String]
        #     Optional. Resource name of an existing Dataproc Metastore service.
        #
        #     Example:
        #
        #     * `projects/[project_id]/locations/[region]/services/[service_id]`
        # @!attribute [rw] spark_history_server_config
        #   @return [::Google::Cloud::Dataproc::V1::SparkHistoryServerConfig]
        #     Optional. The Spark History Server configuration for the workload.
        class PeripheralsConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime information about workload execution.
        # @!attribute [r] endpoints
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Output only. Map of remote access endpoints (such as web interfaces and APIs) to their
        #     URIs.
        # @!attribute [r] output_uri
        #   @return [::String]
        #     Output only. A URI pointing to the location of the stdout and stderr of the workload.
        # @!attribute [r] diagnostic_output_uri
        #   @return [::String]
        #     Output only. A URI pointing to the location of the diagnostics tarball.
        class RuntimeInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class EndpointsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # The cluster's GKE config.
        # @!attribute [rw] gke_cluster_target
        #   @return [::String]
        #     Optional. A target GKE cluster to deploy to. It must be in the same project and
        #     region as the Dataproc cluster (the GKE cluster can be zonal or regional).
        #     Format: 'projects/\\{project}/locations/\\{location}/clusters/\\{cluster_id}'
        # @!attribute [rw] node_pool_target
        #   @return [::Array<::Google::Cloud::Dataproc::V1::GkeNodePoolTarget>]
        #     Optional. GKE NodePools where workloads will be scheduled. At least one node pool
        #     must be assigned the 'default' role. Each role can be given to only a
        #     single NodePoolTarget. All NodePools must have the same location settings.
        #     If a nodePoolTarget is not specified, Dataproc constructs a default
        #     nodePoolTarget.
        class GkeClusterConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The configuration for running the Dataproc cluster on Kubernetes.
        # @!attribute [rw] kubernetes_namespace
        #   @return [::String]
        #     Optional. A namespace within the Kubernetes cluster to deploy into. If this namespace
        #     does not exist, it is created. If it exists, Dataproc
        #     verifies that another Dataproc VirtualCluster is not installed
        #     into it. If not specified, the name of the Dataproc Cluster is used.
        # @!attribute [rw] gke_cluster_config
        #   @return [::Google::Cloud::Dataproc::V1::GkeClusterConfig]
        #     Required. The configuration for running the Dataproc cluster on GKE.
        # @!attribute [rw] kubernetes_software_config
        #   @return [::Google::Cloud::Dataproc::V1::KubernetesSoftwareConfig]
        #     Optional. The software configuration for this Dataproc cluster running on Kubernetes.
        class KubernetesClusterConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The software configuration for this Dataproc cluster running on Kubernetes.
        # @!attribute [rw] component_version
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     The components that should be installed in this Dataproc cluster. The key
        #     must be a string from the KubernetesComponent enumeration. The value is
        #     the version of the software to be installed.
        #     At least one entry must be specified.
        # @!attribute [rw] properties
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     The properties to set on daemon config files.
        #
        #     Property keys are specified in `prefix:property` format, for example
        #     `spark:spark.kubernetes.container.image`. The following are supported
        #     prefixes and their mappings:
        #
        #     * spark:  `spark-defaults.conf`
        #
        #     For more information, see [Cluster
        #     properties](https://cloud.google.com/dataproc/docs/concepts/cluster-properties).
        class KubernetesSoftwareConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class ComponentVersionEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class PropertiesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # GKE NodePools that Dataproc workloads run on.
        # @!attribute [rw] node_pool
        #   @return [::String]
        #     Required. The target GKE NodePool.
        #     Format:
        #     'projects/\\{project}/locations/\\{location}/clusters/\\{cluster}/nodePools/\\{node_pool}'
        # @!attribute [rw] roles
        #   @return [::Array<::Google::Cloud::Dataproc::V1::GkeNodePoolTarget::Role>]
        #     Required. The types of role for a GKE NodePool
        # @!attribute [rw] node_pool_config
        #   @return [::Google::Cloud::Dataproc::V1::GkeNodePoolConfig]
        #     Optional. The configuration for the GKE NodePool.
        #
        #     If specified, Dataproc attempts to create a NodePool with the
        #     specified shape. If one with the same name already exists, it is
        #     verified against all specified fields. If a field differs, the
        #     virtual cluster creation will fail.
        #
        #     If omitted, any NodePool with the specified name is used. If a
        #     NodePool with the specified name does not exist, Dataproc create a NodePool
        #     with default values.
        class GkeNodePoolTarget
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # `Role` specifies whose tasks will run on the NodePool. The roles can be
          # specific to workloads. Exactly one GkeNodePoolTarget within the
          # VirtualCluster must have 'default' role, which is used to run all workloads
          # that are not associated with a NodePool.
          module Role
            # Role is unspecified.
            ROLE_UNSPECIFIED = 0

            # Any roles that are not directly assigned to a NodePool run on the
            # `default` role's NodePool.
            DEFAULT = 1

            # Run controllers and webhooks.
            CONTROLLER = 2

            # Run spark driver.
            SPARK_DRIVER = 3

            # Run spark executors.
            SPARK_EXECUTOR = 4
          end
        end

        # The configuration of a GKE NodePool used by a [Dataproc-on-GKE
        # cluster](https://cloud.google.com/dataproc/docs/concepts/jobs/dataproc-gke#create-a-dataproc-on-gke-cluster).
        # @!attribute [rw] config
        #   @return [::Google::Cloud::Dataproc::V1::GkeNodePoolConfig::GkeNodeConfig]
        #     Optional. The node pool configuration.
        # @!attribute [rw] locations
        #   @return [::Array<::String>]
        #     Optional. The list of Compute Engine
        #     [zones](https://cloud.google.com/compute/docs/zones#available) where
        #     NodePool's nodes will be located.
        #
        #     **Note:** Currently, only one zone may be specified.
        #
        #     If a location is not specified during NodePool creation, Dataproc will
        #     choose a location.
        # @!attribute [rw] autoscaling
        #   @return [::Google::Cloud::Dataproc::V1::GkeNodePoolConfig::GkeNodePoolAutoscalingConfig]
        #     Optional. The autoscaler configuration for this NodePool. The autoscaler is enabled
        #     only when a valid configuration is present.
        class GkeNodePoolConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Parameters that describe cluster nodes.
          # @!attribute [rw] machine_type
          #   @return [::String]
          #     Optional. The name of a Compute Engine [machine
          #     type](https://cloud.google.com/compute/docs/machine-types).
          # @!attribute [rw] preemptible
          #   @return [::Boolean]
          #     Optional. Whether the nodes are created as [preemptible VM
          #     instances](https://cloud.google.com/compute/docs/instances/preemptible).
          # @!attribute [rw] local_ssd_count
          #   @return [::Integer]
          #     Optional. The number of local SSD disks to attach to the node, which is limited by
          #     the maximum number of disks allowable per zone (see [Adding Local
          #     SSDs](https://cloud.google.com/compute/docs/disks/local-ssd)).
          # @!attribute [rw] accelerators
          #   @return [::Array<::Google::Cloud::Dataproc::V1::GkeNodePoolConfig::GkeNodePoolAcceleratorConfig>]
          #     Optional. A list of [hardware
          #     accelerators](https://cloud.google.com/compute/docs/gpus) to attach to
          #     each node.
          # @!attribute [rw] min_cpu_platform
          #   @return [::String]
          #     Optional. [Minimum CPU
          #     platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform)
          #     to be used by this instance. The instance may be scheduled on the
          #     specified or a newer CPU platform. Specify the friendly names of CPU
          #     platforms, such as "Intel Haswell"` or Intel Sandy Bridge".
          class GkeNodeConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A GkeNodeConfigAcceleratorConfig represents a Hardware Accelerator request
          # for a NodePool.
          # @!attribute [rw] accelerator_count
          #   @return [::Integer]
          #     The number of accelerator cards exposed to an instance.
          # @!attribute [rw] accelerator_type
          #   @return [::String]
          #     The accelerator type resource namename (see GPUs on Compute Engine).
          class GkeNodePoolAcceleratorConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # GkeNodePoolAutoscaling contains information the cluster autoscaler needs to
          # adjust the size of the node pool to the current cluster usage.
          # @!attribute [rw] min_node_count
          #   @return [::Integer]
          #     The minimum number of nodes in the NodePool. Must be >= 0 and <=
          #     max_node_count.
          # @!attribute [rw] max_node_count
          #   @return [::Integer]
          #     The maximum number of nodes in the NodePool. Must be >= min_node_count.
          #     **Note:** Quota must be sufficient to scale up the cluster.
          class GkeNodePoolAutoscalingConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Cluster components that can be activated.
        module Component
          # Unspecified component. Specifying this will cause Cluster creation to fail.
          COMPONENT_UNSPECIFIED = 0

          # The Anaconda python distribution. The Anaconda component is not supported
          # in the Dataproc
          # <a
          # href="/dataproc/docs/concepts/versioning/dataproc-release-2.0">2.0
          # image</a>. The 2.0 image is pre-installed with Miniconda.
          ANACONDA = 5

          # Docker
          DOCKER = 13

          # The Druid query engine. (alpha)
          DRUID = 9

          # Flink
          FLINK = 14

          # HBase. (beta)
          HBASE = 11

          # The Hive Web HCatalog (the REST service for accessing HCatalog).
          HIVE_WEBHCAT = 3

          # The Jupyter Notebook.
          JUPYTER = 1

          # The Presto query engine.
          PRESTO = 6

          # The Ranger service.
          RANGER = 12

          # The Solr service.
          SOLR = 10

          # The Zeppelin notebook.
          ZEPPELIN = 4

          # The Zookeeper service.
          ZOOKEEPER = 8
        end

        # Actions in response to failure of a resource associated with a cluster.
        module FailureAction
          # When FailureAction is unspecified, failure action defaults to NO_ACTION.
          FAILURE_ACTION_UNSPECIFIED = 0

          # Take no action on failure to create a cluster resource. NO_ACTION is the
          # default.
          NO_ACTION = 1

          # Delete the failed cluster resource.
          DELETE = 2
        end
      end
    end
  end
end
