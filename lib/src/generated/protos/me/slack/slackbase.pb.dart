///
//  Generated code. Do not modify.
//  source: protos/me/slack/slackbase.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SKWorkspace extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SKWorkspace', createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imageUrl')
    ..aQS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subdomain')
    ..pc<SKChannel>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channels', $pb.PbFieldType.PM, subBuilder: SKChannel.create)
  ;

  SKWorkspace._() : super();
  factory SKWorkspace({
    $core.String? name,
    $core.String? imageUrl,
    $core.String? subdomain,
    $core.Iterable<SKChannel>? channels,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (imageUrl != null) {
      _result.imageUrl = imageUrl;
    }
    if (subdomain != null) {
      _result.subdomain = subdomain;
    }
    if (channels != null) {
      _result.channels.addAll(channels);
    }
    return _result;
  }
  factory SKWorkspace.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SKWorkspace.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SKWorkspace clone() => SKWorkspace()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SKWorkspace copyWith(void Function(SKWorkspace) updates) => super.copyWith((message) => updates(message as SKWorkspace)) as SKWorkspace; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SKWorkspace create() => SKWorkspace._();
  SKWorkspace createEmptyInstance() => create();
  static $pb.PbList<SKWorkspace> createRepeated() => $pb.PbList<SKWorkspace>();
  @$core.pragma('dart2js:noInline')
  static SKWorkspace getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SKWorkspace>(create);
  static SKWorkspace? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get imageUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set imageUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasImageUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearImageUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get subdomain => $_getSZ(2);
  @$pb.TagNumber(3)
  set subdomain($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSubdomain() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubdomain() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<SKChannel> get channels => $_getList(3);
}

class SKUserWorkspaces extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SKUserWorkspaces', createEmptyInstance: create)
    ..pc<SKWorkspace>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workspace', $pb.PbFieldType.PM, subBuilder: SKWorkspace.create)
  ;

  SKUserWorkspaces._() : super();
  factory SKUserWorkspaces({
    $core.Iterable<SKWorkspace>? workspace,
  }) {
    final _result = create();
    if (workspace != null) {
      _result.workspace.addAll(workspace);
    }
    return _result;
  }
  factory SKUserWorkspaces.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SKUserWorkspaces.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SKUserWorkspaces clone() => SKUserWorkspaces()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SKUserWorkspaces copyWith(void Function(SKUserWorkspaces) updates) => super.copyWith((message) => updates(message as SKUserWorkspaces)) as SKUserWorkspaces; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SKUserWorkspaces create() => SKUserWorkspaces._();
  SKUserWorkspaces createEmptyInstance() => create();
  static $pb.PbList<SKUserWorkspaces> createRepeated() => $pb.PbList<SKUserWorkspaces>();
  @$core.pragma('dart2js:noInline')
  static SKUserWorkspaces getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SKUserWorkspaces>(create);
  static SKUserWorkspaces? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SKWorkspace> get workspace => $_getList(0);
}

class SKUserChannels extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SKUserChannels', createEmptyInstance: create)
    ..pc<SKChannel>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channels', $pb.PbFieldType.PM, subBuilder: SKChannel.create)
  ;

  SKUserChannels._() : super();
  factory SKUserChannels({
    $core.Iterable<SKChannel>? channels,
  }) {
    final _result = create();
    if (channels != null) {
      _result.channels.addAll(channels);
    }
    return _result;
  }
  factory SKUserChannels.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SKUserChannels.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SKUserChannels clone() => SKUserChannels()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SKUserChannels copyWith(void Function(SKUserChannels) updates) => super.copyWith((message) => updates(message as SKUserChannels)) as SKUserChannels; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SKUserChannels create() => SKUserChannels._();
  SKUserChannels createEmptyInstance() => create();
  static $pb.PbList<SKUserChannels> createRepeated() => $pb.PbList<SKUserChannels>();
  @$core.pragma('dart2js:noInline')
  static SKUserChannels getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SKUserChannels>(create);
  static SKUserChannels? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SKChannel> get channels => $_getList(0);
}

class SKChannelUsers extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SKChannelUsers', createEmptyInstance: create)
    ..pc<SKUser>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'users', $pb.PbFieldType.PM, subBuilder: SKUser.create)
  ;

  SKChannelUsers._() : super();
  factory SKChannelUsers({
    $core.Iterable<SKUser>? users,
  }) {
    final _result = create();
    if (users != null) {
      _result.users.addAll(users);
    }
    return _result;
  }
  factory SKChannelUsers.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SKChannelUsers.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SKChannelUsers clone() => SKChannelUsers()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SKChannelUsers copyWith(void Function(SKChannelUsers) updates) => super.copyWith((message) => updates(message as SKChannelUsers)) as SKChannelUsers; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SKChannelUsers create() => SKChannelUsers._();
  SKChannelUsers createEmptyInstance() => create();
  static $pb.PbList<SKChannelUsers> createRepeated() => $pb.PbList<SKChannelUsers>();
  @$core.pragma('dart2js:noInline')
  static SKChannelUsers getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SKChannelUsers>(create);
  static SKChannelUsers? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SKUser> get users => $_getList(0);
}

class SKChannel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SKChannel', createEmptyInstance: create)
    ..pc<SKUser>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'users', $pb.PbFieldType.PM, subBuilder: SKUser.create)
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.bool>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isPrivate', $pb.PbFieldType.QB)
    ..aQS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'topic')
    ..aQS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelId')
    ..a<$core.bool>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isStarred', $pb.PbFieldType.QB)
  ;

  SKChannel._() : super();
  factory SKChannel({
    $core.Iterable<SKUser>? users,
    $core.String? name,
    $core.bool? isPrivate,
    $core.String? description,
    $core.String? topic,
    $core.String? channelId,
    $core.bool? isStarred,
  }) {
    final _result = create();
    if (users != null) {
      _result.users.addAll(users);
    }
    if (name != null) {
      _result.name = name;
    }
    if (isPrivate != null) {
      _result.isPrivate = isPrivate;
    }
    if (description != null) {
      _result.description = description;
    }
    if (topic != null) {
      _result.topic = topic;
    }
    if (channelId != null) {
      _result.channelId = channelId;
    }
    if (isStarred != null) {
      _result.isStarred = isStarred;
    }
    return _result;
  }
  factory SKChannel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SKChannel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SKChannel clone() => SKChannel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SKChannel copyWith(void Function(SKChannel) updates) => super.copyWith((message) => updates(message as SKChannel)) as SKChannel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SKChannel create() => SKChannel._();
  SKChannel createEmptyInstance() => create();
  static $pb.PbList<SKChannel> createRepeated() => $pb.PbList<SKChannel>();
  @$core.pragma('dart2js:noInline')
  static SKChannel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SKChannel>(create);
  static SKChannel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SKUser> get users => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isPrivate => $_getBF(2);
  @$pb.TagNumber(3)
  set isPrivate($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsPrivate() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsPrivate() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get topic => $_getSZ(4);
  @$pb.TagNumber(5)
  set topic($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTopic() => $_has(4);
  @$pb.TagNumber(5)
  void clearTopic() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get channelId => $_getSZ(5);
  @$pb.TagNumber(6)
  set channelId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasChannelId() => $_has(5);
  @$pb.TagNumber(6)
  void clearChannelId() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get isStarred => $_getBF(6);
  @$pb.TagNumber(7)
  set isStarred($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIsStarred() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsStarred() => clearField(7);
}

class SKUser extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SKUser', createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'username')
    ..aQM<SKUserStatus>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', subBuilder: SKUserStatus.create)
    ..aQS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reportingTo')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'team')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'seniority')
    ..aQS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
  ;

  SKUser._() : super();
  factory SKUser({
    $core.String? name,
    $core.String? username,
    SKUserStatus? status,
    $core.String? title,
    $core.String? email,
    $core.String? location,
    $core.String? reportingTo,
    $core.String? team,
    $core.String? seniority,
    $core.String? userId,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (username != null) {
      _result.username = username;
    }
    if (status != null) {
      _result.status = status;
    }
    if (title != null) {
      _result.title = title;
    }
    if (email != null) {
      _result.email = email;
    }
    if (location != null) {
      _result.location = location;
    }
    if (reportingTo != null) {
      _result.reportingTo = reportingTo;
    }
    if (team != null) {
      _result.team = team;
    }
    if (seniority != null) {
      _result.seniority = seniority;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory SKUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SKUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SKUser clone() => SKUser()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SKUser copyWith(void Function(SKUser) updates) => super.copyWith((message) => updates(message as SKUser)) as SKUser; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SKUser create() => SKUser._();
  SKUser createEmptyInstance() => create();
  static $pb.PbList<SKUser> createRepeated() => $pb.PbList<SKUser>();
  @$core.pragma('dart2js:noInline')
  static SKUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SKUser>(create);
  static SKUser? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => clearField(2);

  @$pb.TagNumber(3)
  SKUserStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(SKUserStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  SKUserStatus ensureStatus() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get title => $_getSZ(3);
  @$pb.TagNumber(4)
  set title($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearTitle() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get email => $_getSZ(4);
  @$pb.TagNumber(5)
  set email($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEmail() => $_has(4);
  @$pb.TagNumber(5)
  void clearEmail() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get location => $_getSZ(5);
  @$pb.TagNumber(6)
  set location($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLocation() => $_has(5);
  @$pb.TagNumber(6)
  void clearLocation() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get reportingTo => $_getSZ(6);
  @$pb.TagNumber(7)
  set reportingTo($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasReportingTo() => $_has(6);
  @$pb.TagNumber(7)
  void clearReportingTo() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get team => $_getSZ(7);
  @$pb.TagNumber(8)
  set team($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTeam() => $_has(7);
  @$pb.TagNumber(8)
  void clearTeam() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get seniority => $_getSZ(8);
  @$pb.TagNumber(9)
  set seniority($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSeniority() => $_has(8);
  @$pb.TagNumber(9)
  void clearSeniority() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get userId => $_getSZ(9);
  @$pb.TagNumber(10)
  set userId($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasUserId() => $_has(9);
  @$pb.TagNumber(10)
  void clearUserId() => clearField(10);
}

class SKUserStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SKUserStatus', createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'emoji')
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
  ;

  SKUserStatus._() : super();
  factory SKUserStatus({
    $core.String? emoji,
    $core.String? status,
  }) {
    final _result = create();
    if (emoji != null) {
      _result.emoji = emoji;
    }
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory SKUserStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SKUserStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SKUserStatus clone() => SKUserStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SKUserStatus copyWith(void Function(SKUserStatus) updates) => super.copyWith((message) => updates(message as SKUserStatus)) as SKUserStatus; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SKUserStatus create() => SKUserStatus._();
  SKUserStatus createEmptyInstance() => create();
  static $pb.PbList<SKUserStatus> createRepeated() => $pb.PbList<SKUserStatus>();
  @$core.pragma('dart2js:noInline')
  static SKUserStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SKUserStatus>(create);
  static SKUserStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get emoji => $_getSZ(0);
  @$pb.TagNumber(1)
  set emoji($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmoji() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmoji() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
}

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Empty', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Empty._() : super();
  factory Empty() => create();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Empty clone() => Empty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty)) as Empty; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty? _defaultInstance;
}

