# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/datacatalog/v1/datacatalog.proto for package 'Google.Cloud.DataCatalog.V1'
# Original file comments:
# Copyright 2020 Google LLC
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
require 'google/cloud/datacatalog/v1/datacatalog_pb'

module Google
  module Cloud
    module DataCatalog
      module V1
        module DataCatalog
          # Data Catalog API service allows you to discover, understand, and manage
          # your data.
          class Service

            include GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.datacatalog.v1.DataCatalog'

            # Searches Data Catalog for multiple resources like entries and tags that
            # match a query.
            #
            # This is a [Custom Method]
            # (https://cloud.google.com/apis/design/custom_methods) that doesn't return
            # all information on a resource, only its ID and high level fields. To get
            # more information, you can subsequently call specific get methods.
            #
            # Note: Data Catalog search queries don't guarantee full recall. Results
            # that match your query might not be returned, even in subsequent
            # result pages. Additionally, returned (and not returned) results can vary
            # if you repeat search queries.
            #
            # For more information, see [Data Catalog search syntax]
            # (https://cloud.google.com/data-catalog/docs/how-to/search-reference).
            rpc :SearchCatalog, ::Google::Cloud::DataCatalog::V1::SearchCatalogRequest, ::Google::Cloud::DataCatalog::V1::SearchCatalogResponse
            # Creates an entry group.
            #
            # An entry group contains logically related entries together with [Cloud
            # Identity and Access Management](/data-catalog/docs/concepts/iam) policies.
            # These policies specify users who can create, edit, and view entries
            # within entry groups.
            #
            # Data Catalog automatically creates entry groups with names that start with
            # the `@` symbol for the following resources:
            #
            # * BigQuery entries (`@bigquery`)
            # * Pub/Sub topics (`@pubsub`)
            # * Dataproc Metastore services (`@dataproc_metastore_{SERVICE_NAME_HASH}`)
            #
            # You can create your own entry groups for Cloud Storage fileset entries
            # and custom entries together with the corresponding IAM policies.
            # User-created entry groups can't contain the `@` symbol, it is reserved
            # for automatically created groups.
            #
            # Entry groups, like entries, can be searched.
            #
            # A maximum of 10,000 entry groups may be created per organization across all
            # locations.
            #
            # You must enable the Data Catalog API in the project identified by
            # the `parent` parameter. For more information, see [Data Catalog resource
            # project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).
            rpc :CreateEntryGroup, ::Google::Cloud::DataCatalog::V1::CreateEntryGroupRequest, ::Google::Cloud::DataCatalog::V1::EntryGroup
            # Gets an entry group.
            rpc :GetEntryGroup, ::Google::Cloud::DataCatalog::V1::GetEntryGroupRequest, ::Google::Cloud::DataCatalog::V1::EntryGroup
            # Updates an entry group.
            #
            # You must enable the Data Catalog API in the project identified by
            # the `entry_group.name` parameter. For more information, see [Data Catalog
            # resource
            # project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).
            rpc :UpdateEntryGroup, ::Google::Cloud::DataCatalog::V1::UpdateEntryGroupRequest, ::Google::Cloud::DataCatalog::V1::EntryGroup
            # Deletes an entry group.
            #
            # You must enable the Data Catalog API in the project
            # identified by the `name` parameter. For more information, see [Data Catalog
            # resource
            # project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).
            rpc :DeleteEntryGroup, ::Google::Cloud::DataCatalog::V1::DeleteEntryGroupRequest, ::Google::Protobuf::Empty
            # Lists entry groups.
            rpc :ListEntryGroups, ::Google::Cloud::DataCatalog::V1::ListEntryGroupsRequest, ::Google::Cloud::DataCatalog::V1::ListEntryGroupsResponse
            # Creates an entry.
            #
            # You can create entries only with 'FILESET', 'CLUSTER', 'DATA_STREAM',
            # or custom types. Data Catalog automatically creates entries with other
            # types during metadata ingestion from integrated systems.
            #
            # You must enable the Data Catalog API in the project identified by
            # the `parent` parameter. For more information, see [Data Catalog resource
            # project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).
            #
            # An entry group can have a maximum of 100,000 entries.
            rpc :CreateEntry, ::Google::Cloud::DataCatalog::V1::CreateEntryRequest, ::Google::Cloud::DataCatalog::V1::Entry
            # Updates an existing entry.
            #
            # You must enable the Data Catalog API in the project identified by
            # the `entry.name` parameter. For more information, see [Data Catalog
            # resource
            # project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).
            rpc :UpdateEntry, ::Google::Cloud::DataCatalog::V1::UpdateEntryRequest, ::Google::Cloud::DataCatalog::V1::Entry
            # Deletes an existing entry.
            #
            # You can delete only the entries created by the
            # [CreateEntry][google.cloud.datacatalog.v1.DataCatalog.CreateEntry]
            # method.
            #
            # You must enable the Data Catalog API in the project identified by
            # the `name` parameter. For more information, see [Data Catalog
            # resource
            # project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).
            rpc :DeleteEntry, ::Google::Cloud::DataCatalog::V1::DeleteEntryRequest, ::Google::Protobuf::Empty
            # Gets an entry.
            rpc :GetEntry, ::Google::Cloud::DataCatalog::V1::GetEntryRequest, ::Google::Cloud::DataCatalog::V1::Entry
            # Gets an entry by its target resource name.
            #
            # The resource name comes from the source Google Cloud Platform service.
            rpc :LookupEntry, ::Google::Cloud::DataCatalog::V1::LookupEntryRequest, ::Google::Cloud::DataCatalog::V1::Entry
            # Lists entries.
            rpc :ListEntries, ::Google::Cloud::DataCatalog::V1::ListEntriesRequest, ::Google::Cloud::DataCatalog::V1::ListEntriesResponse
            # Creates a tag template.
            #
            # You must enable the Data Catalog API in the project identified by the
            # `parent` parameter.
            # For more information, see [Data Catalog resource project]
            # (https://cloud.google.com/data-catalog/docs/concepts/resource-project).
            rpc :CreateTagTemplate, ::Google::Cloud::DataCatalog::V1::CreateTagTemplateRequest, ::Google::Cloud::DataCatalog::V1::TagTemplate
            # Gets a tag template.
            rpc :GetTagTemplate, ::Google::Cloud::DataCatalog::V1::GetTagTemplateRequest, ::Google::Cloud::DataCatalog::V1::TagTemplate
            # Updates a tag template.
            #
            # You can't update template fields with this method. These fields are
            # separate resources with their own create, update, and delete methods.
            #
            # You must enable the Data Catalog API in the project identified by
            # the `tag_template.name` parameter. For more information, see [Data Catalog
            # resource
            # project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).
            rpc :UpdateTagTemplate, ::Google::Cloud::DataCatalog::V1::UpdateTagTemplateRequest, ::Google::Cloud::DataCatalog::V1::TagTemplate
            # Deletes a tag template and all tags that use it.
            #
            # You must enable the Data Catalog API in the project identified by
            # the `name` parameter. For more information, see [Data Catalog resource
            # project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).
            rpc :DeleteTagTemplate, ::Google::Cloud::DataCatalog::V1::DeleteTagTemplateRequest, ::Google::Protobuf::Empty
            # Creates a field in a tag template.
            #
            # You must enable the Data Catalog API in the project identified by
            # the `parent` parameter. For more information, see [Data Catalog resource
            # project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).
            rpc :CreateTagTemplateField, ::Google::Cloud::DataCatalog::V1::CreateTagTemplateFieldRequest, ::Google::Cloud::DataCatalog::V1::TagTemplateField
            # Updates a field in a tag template.
            #
            # You can't update the field type with this method.
            #
            # You must enable the Data Catalog API in the project
            # identified by the `name` parameter. For more information, see [Data Catalog
            # resource
            # project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).
            rpc :UpdateTagTemplateField, ::Google::Cloud::DataCatalog::V1::UpdateTagTemplateFieldRequest, ::Google::Cloud::DataCatalog::V1::TagTemplateField
            # Renames a field in a tag template.
            #
            # You must enable the Data Catalog API in the project identified by the
            # `name` parameter. For more information, see [Data Catalog resource project]
            # (https://cloud.google.com/data-catalog/docs/concepts/resource-project).
            rpc :RenameTagTemplateField, ::Google::Cloud::DataCatalog::V1::RenameTagTemplateFieldRequest, ::Google::Cloud::DataCatalog::V1::TagTemplateField
            # Renames an enum value in a tag template.
            #
            # Within a single enum field, enum values must be unique.
            rpc :RenameTagTemplateFieldEnumValue, ::Google::Cloud::DataCatalog::V1::RenameTagTemplateFieldEnumValueRequest, ::Google::Cloud::DataCatalog::V1::TagTemplateField
            # Deletes a field in a tag template and all uses of this field from the tags
            # based on this template.
            #
            # You must enable the Data Catalog API in the project identified by
            # the `name` parameter. For more information, see [Data Catalog resource
            # project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).
            rpc :DeleteTagTemplateField, ::Google::Cloud::DataCatalog::V1::DeleteTagTemplateFieldRequest, ::Google::Protobuf::Empty
            # Creates a tag and assigns it to:
            #
            # * An [Entry][google.cloud.datacatalog.v1.Entry] if the method name is
            #   ``projects.locations.entryGroups.entries.tags.create``.
            # * Or [EntryGroup][google.cloud.datacatalog.v1.EntryGroup]if the method
            #   name is ``projects.locations.entryGroups.tags.create``.
            #
            # Note: The project identified by the `parent` parameter for the [tag]
            # (https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.entryGroups.entries.tags/create#path-parameters)
            # and the [tag template]
            # (https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.tagTemplates/create#path-parameters)
            # used to create the tag must be in the same organization.
            rpc :CreateTag, ::Google::Cloud::DataCatalog::V1::CreateTagRequest, ::Google::Cloud::DataCatalog::V1::Tag
            # Updates an existing tag.
            rpc :UpdateTag, ::Google::Cloud::DataCatalog::V1::UpdateTagRequest, ::Google::Cloud::DataCatalog::V1::Tag
            # Deletes a tag.
            rpc :DeleteTag, ::Google::Cloud::DataCatalog::V1::DeleteTagRequest, ::Google::Protobuf::Empty
            # Lists tags assigned to an [Entry][google.cloud.datacatalog.v1.Entry].
            rpc :ListTags, ::Google::Cloud::DataCatalog::V1::ListTagsRequest, ::Google::Cloud::DataCatalog::V1::ListTagsResponse
            # Sets an access control policy for a resource. Replaces any existing
            # policy.
            #
            # Supported resources are:
            #
            # - Tag templates
            # - Entry groups
            #
            # Note: This method sets policies only within Data Catalog and can't be
            # used to manage policies in BigQuery, Pub/Sub, Dataproc Metastore, and any
            # external Google Cloud Platform resources synced with the Data Catalog.
            #
            # To call this method, you must have the following Google IAM permissions:
            #
            # - `datacatalog.tagTemplates.setIamPolicy` to set policies on tag
            #   templates.
            # - `datacatalog.entryGroups.setIamPolicy` to set policies on entry groups.
            rpc :SetIamPolicy, ::Google::Iam::V1::SetIamPolicyRequest, ::Google::Iam::V1::Policy
            # Gets the access control policy for a resource.
            #
            # May return:
            #
            # * A`NOT_FOUND` error if the resource doesn't exist or you don't have the
            #   permission to view it.
            # * An empty policy if the resource exists but doesn't have a set policy.
            #
            # Supported resources are:
            #
            # - Tag templates
            # - Entry groups
            #
            # Note: This method doesn't get policies from Google Cloud Platform
            # resources ingested into Data Catalog.
            #
            # To call this method, you must have the following Google IAM permissions:
            #
            # - `datacatalog.tagTemplates.getIamPolicy` to get policies on tag
            #   templates.
            # - `datacatalog.entryGroups.getIamPolicy` to get policies on entry groups.
            rpc :GetIamPolicy, ::Google::Iam::V1::GetIamPolicyRequest, ::Google::Iam::V1::Policy
            # Gets your permissions on a resource.
            #
            # Returns an empty set of permissions if the resource doesn't exist.
            #
            # Supported resources are:
            #
            # - Tag templates
            # - Entry groups
            #
            # Note: This method gets policies only within Data Catalog and can't be
            # used to get policies from BigQuery, Pub/Sub, Dataproc Metastore, and any
            # external Google Cloud Platform resources ingested into Data Catalog.
            #
            # No Google IAM permissions are required to call this method.
            rpc :TestIamPermissions, ::Google::Iam::V1::TestIamPermissionsRequest, ::Google::Iam::V1::TestIamPermissionsResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
