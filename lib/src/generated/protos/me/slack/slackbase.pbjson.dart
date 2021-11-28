///
//  Generated code. Do not modify.
//  source: protos/me/slack/slackbase.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use sKWorkspaceDescriptor instead')
const SKWorkspace$json = const {
  '1': 'SKWorkspace',
  '2': const [
    const {'1': 'name', '3': 1, '4': 2, '5': 9, '10': 'name'},
    const {'1': 'image_url', '3': 2, '4': 2, '5': 9, '10': 'imageUrl'},
    const {'1': 'subdomain', '3': 3, '4': 2, '5': 9, '10': 'subdomain'},
    const {'1': 'channels', '3': 4, '4': 3, '5': 11, '6': '.SKChannel', '10': 'channels'},
  ],
};

/// Descriptor for `SKWorkspace`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sKWorkspaceDescriptor = $convert.base64Decode('CgtTS1dvcmtzcGFjZRISCgRuYW1lGAEgAigJUgRuYW1lEhsKCWltYWdlX3VybBgCIAIoCVIIaW1hZ2VVcmwSHAoJc3ViZG9tYWluGAMgAigJUglzdWJkb21haW4SJgoIY2hhbm5lbHMYBCADKAsyCi5TS0NoYW5uZWxSCGNoYW5uZWxz');
@$core.Deprecated('Use sKUserWorkspacesDescriptor instead')
const SKUserWorkspaces$json = const {
  '1': 'SKUserWorkspaces',
  '2': const [
    const {'1': 'workspace', '3': 1, '4': 3, '5': 11, '6': '.SKWorkspace', '10': 'workspace'},
  ],
};

/// Descriptor for `SKUserWorkspaces`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sKUserWorkspacesDescriptor = $convert.base64Decode('ChBTS1VzZXJXb3Jrc3BhY2VzEioKCXdvcmtzcGFjZRgBIAMoCzIMLlNLV29ya3NwYWNlUgl3b3Jrc3BhY2U=');
@$core.Deprecated('Use sKUserChannelsDescriptor instead')
const SKUserChannels$json = const {
  '1': 'SKUserChannels',
  '2': const [
    const {'1': 'channels', '3': 1, '4': 3, '5': 11, '6': '.SKChannel', '10': 'channels'},
  ],
};

/// Descriptor for `SKUserChannels`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sKUserChannelsDescriptor = $convert.base64Decode('Cg5TS1VzZXJDaGFubmVscxImCghjaGFubmVscxgBIAMoCzIKLlNLQ2hhbm5lbFIIY2hhbm5lbHM=');
@$core.Deprecated('Use sKChannelUsersDescriptor instead')
const SKChannelUsers$json = const {
  '1': 'SKChannelUsers',
  '2': const [
    const {'1': 'users', '3': 1, '4': 3, '5': 11, '6': '.SKUser', '10': 'users'},
  ],
};

/// Descriptor for `SKChannelUsers`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sKChannelUsersDescriptor = $convert.base64Decode('Cg5TS0NoYW5uZWxVc2VycxIdCgV1c2VycxgBIAMoCzIHLlNLVXNlclIFdXNlcnM=');
@$core.Deprecated('Use sKChannelDescriptor instead')
const SKChannel$json = const {
  '1': 'SKChannel',
  '2': const [
    const {'1': 'users', '3': 1, '4': 3, '5': 11, '6': '.SKUser', '10': 'users'},
    const {'1': 'name', '3': 2, '4': 2, '5': 9, '10': 'name'},
    const {'1': 'is_private', '3': 3, '4': 2, '5': 8, '10': 'isPrivate'},
    const {'1': 'description', '3': 4, '4': 2, '5': 9, '10': 'description'},
    const {'1': 'topic', '3': 5, '4': 1, '5': 9, '10': 'topic'},
    const {'1': 'channel_id', '3': 6, '4': 2, '5': 9, '10': 'channelId'},
    const {'1': 'is_starred', '3': 7, '4': 2, '5': 8, '10': 'isStarred'},
  ],
};

/// Descriptor for `SKChannel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sKChannelDescriptor = $convert.base64Decode('CglTS0NoYW5uZWwSHQoFdXNlcnMYASADKAsyBy5TS1VzZXJSBXVzZXJzEhIKBG5hbWUYAiACKAlSBG5hbWUSHQoKaXNfcHJpdmF0ZRgDIAIoCFIJaXNQcml2YXRlEiAKC2Rlc2NyaXB0aW9uGAQgAigJUgtkZXNjcmlwdGlvbhIUCgV0b3BpYxgFIAEoCVIFdG9waWMSHQoKY2hhbm5lbF9pZBgGIAIoCVIJY2hhbm5lbElkEh0KCmlzX3N0YXJyZWQYByACKAhSCWlzU3RhcnJlZA==');
@$core.Deprecated('Use sKUserDescriptor instead')
const SKUser$json = const {
  '1': 'SKUser',
  '2': const [
    const {'1': 'name', '3': 1, '4': 2, '5': 9, '10': 'name'},
    const {'1': 'username', '3': 2, '4': 2, '5': 9, '10': 'username'},
    const {'1': 'status', '3': 3, '4': 2, '5': 11, '6': '.SKUserStatus', '10': 'status'},
    const {'1': 'title', '3': 4, '4': 2, '5': 9, '10': 'title'},
    const {'1': 'email', '3': 5, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'location', '3': 6, '4': 1, '5': 9, '10': 'location'},
    const {'1': 'reporting_to', '3': 7, '4': 1, '5': 9, '10': 'reportingTo'},
    const {'1': 'team', '3': 8, '4': 1, '5': 9, '10': 'team'},
    const {'1': 'seniority', '3': 9, '4': 1, '5': 9, '10': 'seniority'},
    const {'1': 'user_id', '3': 10, '4': 2, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `SKUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sKUserDescriptor = $convert.base64Decode('CgZTS1VzZXISEgoEbmFtZRgBIAIoCVIEbmFtZRIaCgh1c2VybmFtZRgCIAIoCVIIdXNlcm5hbWUSJQoGc3RhdHVzGAMgAigLMg0uU0tVc2VyU3RhdHVzUgZzdGF0dXMSFAoFdGl0bGUYBCACKAlSBXRpdGxlEhQKBWVtYWlsGAUgASgJUgVlbWFpbBIaCghsb2NhdGlvbhgGIAEoCVIIbG9jYXRpb24SIQoMcmVwb3J0aW5nX3RvGAcgASgJUgtyZXBvcnRpbmdUbxISCgR0ZWFtGAggASgJUgR0ZWFtEhwKCXNlbmlvcml0eRgJIAEoCVIJc2VuaW9yaXR5EhcKB3VzZXJfaWQYCiACKAlSBnVzZXJJZA==');
@$core.Deprecated('Use sKUserStatusDescriptor instead')
const SKUserStatus$json = const {
  '1': 'SKUserStatus',
  '2': const [
    const {'1': 'emoji', '3': 1, '4': 2, '5': 9, '10': 'emoji'},
    const {'1': 'status', '3': 2, '4': 2, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `SKUserStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sKUserStatusDescriptor = $convert.base64Decode('CgxTS1VzZXJTdGF0dXMSFAoFZW1vamkYASACKAlSBWVtb2ppEhYKBnN0YXR1cxgCIAIoCVIGc3RhdHVz');
@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = const {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode('CgVFbXB0eQ==');
