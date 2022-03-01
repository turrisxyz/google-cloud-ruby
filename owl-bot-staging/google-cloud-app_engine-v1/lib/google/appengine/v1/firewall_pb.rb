# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/appengine/v1/firewall.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/appengine/v1/firewall.proto", :syntax => :proto3) do
    add_message "google.appengine.v1.FirewallRule" do
      optional :priority, :int32, 1
      optional :action, :enum, 2, "google.appengine.v1.FirewallRule.Action"
      optional :source_range, :string, 3
      optional :description, :string, 4
    end
    add_enum "google.appengine.v1.FirewallRule.Action" do
      value :UNSPECIFIED_ACTION, 0
      value :ALLOW, 1
      value :DENY, 2
    end
  end
end

module Google
  module Cloud
    module AppEngine
      module V1
        FirewallRule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.FirewallRule").msgclass
        FirewallRule::Action = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.FirewallRule.Action").enummodule
      end
    end
  end
end
