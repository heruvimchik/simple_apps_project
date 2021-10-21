// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'api.graphql.g.dart';

mixin NewsMixin {
  @JsonKey(name: '__typename')
  String? $$typename;
  late String id;
  @JsonKey(name: 'created_at')
  late DateTime createdAt;
  @JsonKey(name: 'updated_at')
  late DateTime updatedAt;
  late String title;
  late String content;
  @JsonKey(name: 'user_id')
  String? userId;
}
mixin UserMixin {
  @JsonKey(name: '__typename')
  String? $$typename;
  late String id;
  @JsonKey(name: 'display_name')
  String? displayName;
}

@JsonSerializable(explicitToJson: true)
class InsertNews$MutationRoot$InsertNewsOne extends JsonSerializable
    with EquatableMixin, NewsMixin {
  InsertNews$MutationRoot$InsertNewsOne();

  factory InsertNews$MutationRoot$InsertNewsOne.fromJson(
          Map<String, dynamic> json) =>
      _$InsertNews$MutationRoot$InsertNewsOneFromJson(json);

  @override
  List<Object?> get props =>
      [$$typename, id, createdAt, updatedAt, title, content, userId];
  @override
  Map<String, dynamic> toJson() =>
      _$InsertNews$MutationRoot$InsertNewsOneToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsertNews$MutationRoot extends JsonSerializable with EquatableMixin {
  InsertNews$MutationRoot();

  factory InsertNews$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$InsertNews$MutationRootFromJson(json);

  @JsonKey(name: 'insert_news_one')
  InsertNews$MutationRoot$InsertNewsOne? insertNewsOne;

  @override
  List<Object?> get props => [insertNewsOne];
  @override
  Map<String, dynamic> toJson() => _$InsertNews$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateUser$MutationRoot$UpdateUsersByPk extends JsonSerializable
    with EquatableMixin {
  UpdateUser$MutationRoot$UpdateUsersByPk();

  factory UpdateUser$MutationRoot$UpdateUsersByPk.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateUser$MutationRoot$UpdateUsersByPkFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$UpdateUser$MutationRoot$UpdateUsersByPkToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateUser$MutationRoot extends JsonSerializable with EquatableMixin {
  UpdateUser$MutationRoot();

  factory UpdateUser$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$UpdateUser$MutationRootFromJson(json);

  @JsonKey(name: 'update_users_by_pk')
  UpdateUser$MutationRoot$UpdateUsersByPk? updateUsersByPk;

  @override
  List<Object?> get props => [updateUsersByPk];
  @override
  Map<String, dynamic> toJson() => _$UpdateUser$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetCurrentUser$QueryRoot$User extends JsonSerializable
    with EquatableMixin, UserMixin {
  GetCurrentUser$QueryRoot$User();

  factory GetCurrentUser$QueryRoot$User.fromJson(Map<String, dynamic> json) =>
      _$GetCurrentUser$QueryRoot$UserFromJson(json);

  @override
  List<Object?> get props => [$$typename, id, displayName];
  @override
  Map<String, dynamic> toJson() => _$GetCurrentUser$QueryRoot$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetCurrentUser$QueryRoot extends JsonSerializable with EquatableMixin {
  GetCurrentUser$QueryRoot();

  factory GetCurrentUser$QueryRoot.fromJson(Map<String, dynamic> json) =>
      _$GetCurrentUser$QueryRootFromJson(json);

  GetCurrentUser$QueryRoot$User? user;

  @override
  List<Object?> get props => [user];
  @override
  Map<String, dynamic> toJson() => _$GetCurrentUser$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CurrentUser$SubscriptionRoot$User extends JsonSerializable
    with EquatableMixin, UserMixin {
  CurrentUser$SubscriptionRoot$User();

  factory CurrentUser$SubscriptionRoot$User.fromJson(
          Map<String, dynamic> json) =>
      _$CurrentUser$SubscriptionRoot$UserFromJson(json);

  @override
  List<Object?> get props => [$$typename, id, displayName];
  @override
  Map<String, dynamic> toJson() =>
      _$CurrentUser$SubscriptionRoot$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CurrentUser$SubscriptionRoot extends JsonSerializable
    with EquatableMixin {
  CurrentUser$SubscriptionRoot();

  factory CurrentUser$SubscriptionRoot.fromJson(Map<String, dynamic> json) =>
      _$CurrentUser$SubscriptionRootFromJson(json);

  CurrentUser$SubscriptionRoot$User? user;

  @override
  List<Object?> get props => [user];
  @override
  Map<String, dynamic> toJson() => _$CurrentUser$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class News$SubscriptionRoot$News extends JsonSerializable
    with EquatableMixin, NewsMixin {
  News$SubscriptionRoot$News();

  factory News$SubscriptionRoot$News.fromJson(Map<String, dynamic> json) =>
      _$News$SubscriptionRoot$NewsFromJson(json);

  @override
  List<Object?> get props =>
      [$$typename, id, createdAt, updatedAt, title, content, userId];
  @override
  Map<String, dynamic> toJson() => _$News$SubscriptionRoot$NewsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class News$SubscriptionRoot extends JsonSerializable with EquatableMixin {
  News$SubscriptionRoot();

  factory News$SubscriptionRoot.fromJson(Map<String, dynamic> json) =>
      _$News$SubscriptionRootFromJson(json);

  late List<News$SubscriptionRoot$News> news;

  @override
  List<Object?> get props => [news];
  @override
  Map<String, dynamic> toJson() => _$News$SubscriptionRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NewsOrderBy extends JsonSerializable with EquatableMixin {
  NewsOrderBy(
      {this.author,
      this.content,
      this.createdAt,
      this.id,
      this.title,
      this.updatedAt,
      this.userId});

  factory NewsOrderBy.fromJson(Map<String, dynamic> json) =>
      _$NewsOrderByFromJson(json);

  UsersOrderBy? author;

  @JsonKey(unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? content;

  @JsonKey(name: 'created_at', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? createdAt;

  @JsonKey(unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? id;

  @JsonKey(unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? title;

  @JsonKey(name: 'updated_at', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? updatedAt;

  @JsonKey(name: 'user_id', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? userId;

  @override
  List<Object?> get props =>
      [author, content, createdAt, id, title, updatedAt, userId];
  @override
  Map<String, dynamic> toJson() => _$NewsOrderByToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UsersOrderBy extends JsonSerializable with EquatableMixin {
  UsersOrderBy(
      {this.account,
      this.avatarUrl,
      this.createdAt,
      this.displayName,
      this.id,
      this.phoneNumber,
      this.updatedAt});

  factory UsersOrderBy.fromJson(Map<String, dynamic> json) =>
      _$UsersOrderByFromJson(json);

  AuthAccountsOrderBy? account;

  @JsonKey(name: 'avatar_url', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? avatarUrl;

  @JsonKey(name: 'created_at', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? createdAt;

  @JsonKey(name: 'display_name', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? displayName;

  @JsonKey(unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? id;

  @JsonKey(name: 'phone_number', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? phoneNumber;

  @JsonKey(name: 'updated_at', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? updatedAt;

  @override
  List<Object?> get props =>
      [account, avatarUrl, createdAt, displayName, id, phoneNumber, updatedAt];
  @override
  Map<String, dynamic> toJson() => _$UsersOrderByToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuthAccountsOrderBy extends JsonSerializable with EquatableMixin {
  AuthAccountsOrderBy(
      {this.accountProvidersAggregate,
      this.accountRolesAggregate,
      this.active,
      this.createdAt,
      this.customRegisterData,
      this.defaultRole,
      this.email,
      this.firebaseUid,
      this.id,
      this.isAnonymous,
      this.mfaEnabled,
      this.newEmail,
      this.otpSecret,
      this.passwordHash,
      this.phoneNumber,
      this.refreshTokensAggregate,
      this.role,
      this.ticket,
      this.ticketExpiresAt,
      this.updatedAt,
      this.user,
      this.userId});

  factory AuthAccountsOrderBy.fromJson(Map<String, dynamic> json) =>
      _$AuthAccountsOrderByFromJson(json);

  @JsonKey(name: 'account_providers_aggregate')
  AuthAccountProvidersAggregateOrderBy? accountProvidersAggregate;

  @JsonKey(name: 'account_roles_aggregate')
  AuthAccountRolesAggregateOrderBy? accountRolesAggregate;

  @JsonKey(unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? active;

  @JsonKey(name: 'created_at', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? createdAt;

  @JsonKey(
      name: 'custom_register_data', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? customRegisterData;

  @JsonKey(name: 'default_role', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? defaultRole;

  @JsonKey(unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? email;

  @JsonKey(name: 'firebase_uid', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? firebaseUid;

  @JsonKey(unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? id;

  @JsonKey(name: 'is_anonymous', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? isAnonymous;

  @JsonKey(name: 'mfa_enabled', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? mfaEnabled;

  @JsonKey(name: 'new_email', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? newEmail;

  @JsonKey(name: 'otp_secret', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? otpSecret;

  @JsonKey(name: 'password_hash', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? passwordHash;

  @JsonKey(name: 'phone_number', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? phoneNumber;

  @JsonKey(name: 'refresh_tokens_aggregate')
  AuthRefreshTokensAggregateOrderBy? refreshTokensAggregate;

  AuthRolesOrderBy? role;

  @JsonKey(unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? ticket;

  @JsonKey(name: 'ticket_expires_at', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? ticketExpiresAt;

  @JsonKey(name: 'updated_at', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? updatedAt;

  UsersOrderBy? user;

  @JsonKey(name: 'user_id', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? userId;

  @override
  List<Object?> get props => [
        accountProvidersAggregate,
        accountRolesAggregate,
        active,
        createdAt,
        customRegisterData,
        defaultRole,
        email,
        firebaseUid,
        id,
        isAnonymous,
        mfaEnabled,
        newEmail,
        otpSecret,
        passwordHash,
        phoneNumber,
        refreshTokensAggregate,
        role,
        ticket,
        ticketExpiresAt,
        updatedAt,
        user,
        userId
      ];
  @override
  Map<String, dynamic> toJson() => _$AuthAccountsOrderByToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuthAccountProvidersAggregateOrderBy extends JsonSerializable
    with EquatableMixin {
  AuthAccountProvidersAggregateOrderBy({this.count, this.max, this.min});

  factory AuthAccountProvidersAggregateOrderBy.fromJson(
          Map<String, dynamic> json) =>
      _$AuthAccountProvidersAggregateOrderByFromJson(json);

  @JsonKey(unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? count;

  AuthAccountProvidersMaxOrderBy? max;

  AuthAccountProvidersMinOrderBy? min;

  @override
  List<Object?> get props => [count, max, min];
  @override
  Map<String, dynamic> toJson() =>
      _$AuthAccountProvidersAggregateOrderByToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuthAccountProvidersMaxOrderBy extends JsonSerializable
    with EquatableMixin {
  AuthAccountProvidersMaxOrderBy(
      {this.accountId,
      this.authProvider,
      this.authProviderUniqueId,
      this.createdAt,
      this.id,
      this.updatedAt});

  factory AuthAccountProvidersMaxOrderBy.fromJson(Map<String, dynamic> json) =>
      _$AuthAccountProvidersMaxOrderByFromJson(json);

  @JsonKey(name: 'account_id', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? accountId;

  @JsonKey(name: 'auth_provider', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? authProvider;

  @JsonKey(
      name: 'auth_provider_unique_id', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? authProviderUniqueId;

  @JsonKey(name: 'created_at', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? createdAt;

  @JsonKey(unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? id;

  @JsonKey(name: 'updated_at', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? updatedAt;

  @override
  List<Object?> get props =>
      [accountId, authProvider, authProviderUniqueId, createdAt, id, updatedAt];
  @override
  Map<String, dynamic> toJson() => _$AuthAccountProvidersMaxOrderByToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuthAccountProvidersMinOrderBy extends JsonSerializable
    with EquatableMixin {
  AuthAccountProvidersMinOrderBy(
      {this.accountId,
      this.authProvider,
      this.authProviderUniqueId,
      this.createdAt,
      this.id,
      this.updatedAt});

  factory AuthAccountProvidersMinOrderBy.fromJson(Map<String, dynamic> json) =>
      _$AuthAccountProvidersMinOrderByFromJson(json);

  @JsonKey(name: 'account_id', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? accountId;

  @JsonKey(name: 'auth_provider', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? authProvider;

  @JsonKey(
      name: 'auth_provider_unique_id', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? authProviderUniqueId;

  @JsonKey(name: 'created_at', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? createdAt;

  @JsonKey(unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? id;

  @JsonKey(name: 'updated_at', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? updatedAt;

  @override
  List<Object?> get props =>
      [accountId, authProvider, authProviderUniqueId, createdAt, id, updatedAt];
  @override
  Map<String, dynamic> toJson() => _$AuthAccountProvidersMinOrderByToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuthAccountRolesAggregateOrderBy extends JsonSerializable
    with EquatableMixin {
  AuthAccountRolesAggregateOrderBy({this.count, this.max, this.min});

  factory AuthAccountRolesAggregateOrderBy.fromJson(
          Map<String, dynamic> json) =>
      _$AuthAccountRolesAggregateOrderByFromJson(json);

  @JsonKey(unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? count;

  AuthAccountRolesMaxOrderBy? max;

  AuthAccountRolesMinOrderBy? min;

  @override
  List<Object?> get props => [count, max, min];
  @override
  Map<String, dynamic> toJson() =>
      _$AuthAccountRolesAggregateOrderByToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuthAccountRolesMaxOrderBy extends JsonSerializable with EquatableMixin {
  AuthAccountRolesMaxOrderBy({this.accountId, this.createdAt, this.id});

  factory AuthAccountRolesMaxOrderBy.fromJson(Map<String, dynamic> json) =>
      _$AuthAccountRolesMaxOrderByFromJson(json);

  @JsonKey(name: 'account_id', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? accountId;

  @JsonKey(name: 'created_at', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? createdAt;

  @JsonKey(unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? id;

  @override
  List<Object?> get props => [accountId, createdAt, id];
  @override
  Map<String, dynamic> toJson() => _$AuthAccountRolesMaxOrderByToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuthAccountRolesMinOrderBy extends JsonSerializable with EquatableMixin {
  AuthAccountRolesMinOrderBy({this.accountId, this.createdAt, this.id});

  factory AuthAccountRolesMinOrderBy.fromJson(Map<String, dynamic> json) =>
      _$AuthAccountRolesMinOrderByFromJson(json);

  @JsonKey(name: 'account_id', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? accountId;

  @JsonKey(name: 'created_at', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? createdAt;

  @JsonKey(unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? id;

  @override
  List<Object?> get props => [accountId, createdAt, id];
  @override
  Map<String, dynamic> toJson() => _$AuthAccountRolesMinOrderByToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuthRefreshTokensAggregateOrderBy extends JsonSerializable
    with EquatableMixin {
  AuthRefreshTokensAggregateOrderBy({this.count, this.max, this.min});

  factory AuthRefreshTokensAggregateOrderBy.fromJson(
          Map<String, dynamic> json) =>
      _$AuthRefreshTokensAggregateOrderByFromJson(json);

  @JsonKey(unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? count;

  AuthRefreshTokensMaxOrderBy? max;

  AuthRefreshTokensMinOrderBy? min;

  @override
  List<Object?> get props => [count, max, min];
  @override
  Map<String, dynamic> toJson() =>
      _$AuthRefreshTokensAggregateOrderByToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuthRefreshTokensMaxOrderBy extends JsonSerializable with EquatableMixin {
  AuthRefreshTokensMaxOrderBy(
      {this.accountId, this.createdAt, this.expiresAt, this.refreshToken});

  factory AuthRefreshTokensMaxOrderBy.fromJson(Map<String, dynamic> json) =>
      _$AuthRefreshTokensMaxOrderByFromJson(json);

  @JsonKey(name: 'account_id', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? accountId;

  @JsonKey(name: 'created_at', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? createdAt;

  @JsonKey(name: 'expires_at', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? expiresAt;

  @JsonKey(name: 'refresh_token', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? refreshToken;

  @override
  List<Object?> get props => [accountId, createdAt, expiresAt, refreshToken];
  @override
  Map<String, dynamic> toJson() => _$AuthRefreshTokensMaxOrderByToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuthRefreshTokensMinOrderBy extends JsonSerializable with EquatableMixin {
  AuthRefreshTokensMinOrderBy(
      {this.accountId, this.createdAt, this.expiresAt, this.refreshToken});

  factory AuthRefreshTokensMinOrderBy.fromJson(Map<String, dynamic> json) =>
      _$AuthRefreshTokensMinOrderByFromJson(json);

  @JsonKey(name: 'account_id', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? accountId;

  @JsonKey(name: 'created_at', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? createdAt;

  @JsonKey(name: 'expires_at', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? expiresAt;

  @JsonKey(name: 'refresh_token', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? refreshToken;

  @override
  List<Object?> get props => [accountId, createdAt, expiresAt, refreshToken];
  @override
  Map<String, dynamic> toJson() => _$AuthRefreshTokensMinOrderByToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuthRolesOrderBy extends JsonSerializable with EquatableMixin {
  AuthRolesOrderBy(
      {this.accountRolesAggregate, this.accountsAggregate, this.role});

  factory AuthRolesOrderBy.fromJson(Map<String, dynamic> json) =>
      _$AuthRolesOrderByFromJson(json);

  @JsonKey(name: 'account_roles_aggregate')
  AuthAccountRolesAggregateOrderBy? accountRolesAggregate;

  @JsonKey(name: 'accounts_aggregate')
  AuthAccountsAggregateOrderBy? accountsAggregate;

  @JsonKey(unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? role;

  @override
  List<Object?> get props => [accountRolesAggregate, accountsAggregate, role];
  @override
  Map<String, dynamic> toJson() => _$AuthRolesOrderByToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuthAccountsAggregateOrderBy extends JsonSerializable
    with EquatableMixin {
  AuthAccountsAggregateOrderBy({this.count, this.max, this.min});

  factory AuthAccountsAggregateOrderBy.fromJson(Map<String, dynamic> json) =>
      _$AuthAccountsAggregateOrderByFromJson(json);

  @JsonKey(unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? count;

  AuthAccountsMaxOrderBy? max;

  AuthAccountsMinOrderBy? min;

  @override
  List<Object?> get props => [count, max, min];
  @override
  Map<String, dynamic> toJson() => _$AuthAccountsAggregateOrderByToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuthAccountsMaxOrderBy extends JsonSerializable with EquatableMixin {
  AuthAccountsMaxOrderBy(
      {this.createdAt,
      this.email,
      this.firebaseUid,
      this.id,
      this.newEmail,
      this.otpSecret,
      this.passwordHash,
      this.phoneNumber,
      this.ticket,
      this.ticketExpiresAt,
      this.updatedAt,
      this.userId});

  factory AuthAccountsMaxOrderBy.fromJson(Map<String, dynamic> json) =>
      _$AuthAccountsMaxOrderByFromJson(json);

  @JsonKey(name: 'created_at', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? createdAt;

  @JsonKey(unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? email;

  @JsonKey(name: 'firebase_uid', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? firebaseUid;

  @JsonKey(unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? id;

  @JsonKey(name: 'new_email', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? newEmail;

  @JsonKey(name: 'otp_secret', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? otpSecret;

  @JsonKey(name: 'password_hash', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? passwordHash;

  @JsonKey(name: 'phone_number', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? phoneNumber;

  @JsonKey(unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? ticket;

  @JsonKey(name: 'ticket_expires_at', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? ticketExpiresAt;

  @JsonKey(name: 'updated_at', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? updatedAt;

  @JsonKey(name: 'user_id', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? userId;

  @override
  List<Object?> get props => [
        createdAt,
        email,
        firebaseUid,
        id,
        newEmail,
        otpSecret,
        passwordHash,
        phoneNumber,
        ticket,
        ticketExpiresAt,
        updatedAt,
        userId
      ];
  @override
  Map<String, dynamic> toJson() => _$AuthAccountsMaxOrderByToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AuthAccountsMinOrderBy extends JsonSerializable with EquatableMixin {
  AuthAccountsMinOrderBy(
      {this.createdAt,
      this.email,
      this.firebaseUid,
      this.id,
      this.newEmail,
      this.otpSecret,
      this.passwordHash,
      this.phoneNumber,
      this.ticket,
      this.ticketExpiresAt,
      this.updatedAt,
      this.userId});

  factory AuthAccountsMinOrderBy.fromJson(Map<String, dynamic> json) =>
      _$AuthAccountsMinOrderByFromJson(json);

  @JsonKey(name: 'created_at', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? createdAt;

  @JsonKey(unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? email;

  @JsonKey(name: 'firebase_uid', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? firebaseUid;

  @JsonKey(unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? id;

  @JsonKey(name: 'new_email', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? newEmail;

  @JsonKey(name: 'otp_secret', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? otpSecret;

  @JsonKey(name: 'password_hash', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? passwordHash;

  @JsonKey(name: 'phone_number', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? phoneNumber;

  @JsonKey(unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? ticket;

  @JsonKey(name: 'ticket_expires_at', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? ticketExpiresAt;

  @JsonKey(name: 'updated_at', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? updatedAt;

  @JsonKey(name: 'user_id', unknownEnumValue: OrderBy.artemisUnknown)
  OrderBy? userId;

  @override
  List<Object?> get props => [
        createdAt,
        email,
        firebaseUid,
        id,
        newEmail,
        otpSecret,
        passwordHash,
        phoneNumber,
        ticket,
        ticketExpiresAt,
        updatedAt,
        userId
      ];
  @override
  Map<String, dynamic> toJson() => _$AuthAccountsMinOrderByToJson(this);
}

enum OrderBy {
  @JsonValue('asc')
  asc,
  @JsonValue('asc_nulls_first')
  ascNullsFirst,
  @JsonValue('asc_nulls_last')
  ascNullsLast,
  @JsonValue('desc')
  desc,
  @JsonValue('desc_nulls_first')
  descNullsFirst,
  @JsonValue('desc_nulls_last')
  descNullsLast,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

@JsonSerializable(explicitToJson: true)
class InsertNewsArguments extends JsonSerializable with EquatableMixin {
  InsertNewsArguments({required this.title, required this.content});

  @override
  factory InsertNewsArguments.fromJson(Map<String, dynamic> json) =>
      _$InsertNewsArgumentsFromJson(json);

  late String title;

  late String content;

  @override
  List<Object?> get props => [title, content];
  @override
  Map<String, dynamic> toJson() => _$InsertNewsArgumentsToJson(this);
}

final INSERT_NEWS_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'InsertNews'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'title')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'content')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'insert_news_one'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'object'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'title'),
                        value: VariableNode(name: NameNode(value: 'title'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'content'),
                        value: VariableNode(name: NameNode(value: 'content')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(name: NameNode(value: 'News'), directives: [])
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'News'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'news'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'created_at'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'updated_at'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'content'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'user_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ]))
]);

class InsertNewsMutation
    extends GraphQLQuery<InsertNews$MutationRoot, InsertNewsArguments> {
  InsertNewsMutation({required this.variables});

  @override
  final DocumentNode document = INSERT_NEWS_MUTATION_DOCUMENT;

  @override
  final String operationName = 'InsertNews';

  @override
  final InsertNewsArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  InsertNews$MutationRoot parse(Map<String, dynamic> json) =>
      InsertNews$MutationRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UpdateUserArguments extends JsonSerializable with EquatableMixin {
  UpdateUserArguments({required this.id, this.display_name});

  @override
  factory UpdateUserArguments.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserArgumentsFromJson(json);

  late String id;

  final String? display_name;

  @override
  List<Object?> get props => [id, display_name];
  @override
  Map<String, dynamic> toJson() => _$UpdateUserArgumentsToJson(this);
}

final UPDATE_USER_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateUser'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'display_name')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'update_users_by_pk'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'pk_columns'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'id'),
                        value: VariableNode(name: NameNode(value: 'id')))
                  ])),
              ArgumentNode(
                  name: NameNode(value: '_set'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'display_name'),
                        value:
                            VariableNode(name: NameNode(value: 'display_name')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class UpdateUserMutation
    extends GraphQLQuery<UpdateUser$MutationRoot, UpdateUserArguments> {
  UpdateUserMutation({required this.variables});

  @override
  final DocumentNode document = UPDATE_USER_MUTATION_DOCUMENT;

  @override
  final String operationName = 'UpdateUser';

  @override
  final UpdateUserArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  UpdateUser$MutationRoot parse(Map<String, dynamic> json) =>
      UpdateUser$MutationRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetCurrentUserArguments extends JsonSerializable with EquatableMixin {
  GetCurrentUserArguments({required this.userId});

  @override
  factory GetCurrentUserArguments.fromJson(Map<String, dynamic> json) =>
      _$GetCurrentUserArgumentsFromJson(json);

  late String userId;

  @override
  List<Object?> get props => [userId];
  @override
  Map<String, dynamic> toJson() => _$GetCurrentUserArgumentsToJson(this);
}

final GET_CURRENT_USER_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetCurrentUser'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'userId')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'users_by_pk'),
            alias: NameNode(value: 'user'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'userId')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(name: NameNode(value: 'User'), directives: [])
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'User'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'users'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'display_name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ]))
]);

class GetCurrentUserQuery
    extends GraphQLQuery<GetCurrentUser$QueryRoot, GetCurrentUserArguments> {
  GetCurrentUserQuery({required this.variables});

  @override
  final DocumentNode document = GET_CURRENT_USER_QUERY_DOCUMENT;

  @override
  final String operationName = 'GetCurrentUser';

  @override
  final GetCurrentUserArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetCurrentUser$QueryRoot parse(Map<String, dynamic> json) =>
      GetCurrentUser$QueryRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CurrentUserArguments extends JsonSerializable with EquatableMixin {
  CurrentUserArguments({required this.userId});

  @override
  factory CurrentUserArguments.fromJson(Map<String, dynamic> json) =>
      _$CurrentUserArgumentsFromJson(json);

  late String userId;

  @override
  List<Object?> get props => [userId];
  @override
  Map<String, dynamic> toJson() => _$CurrentUserArgumentsToJson(this);
}

final CURRENT_USER_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'CurrentUser'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'userId')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'users_by_pk'),
            alias: NameNode(value: 'user'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'userId')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(name: NameNode(value: 'User'), directives: [])
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'User'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'users'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'display_name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ]))
]);

class CurrentUserSubscription
    extends GraphQLQuery<CurrentUser$SubscriptionRoot, CurrentUserArguments> {
  CurrentUserSubscription({required this.variables});

  @override
  final DocumentNode document = CURRENT_USER_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName = 'CurrentUser';

  @override
  final CurrentUserArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CurrentUser$SubscriptionRoot parse(Map<String, dynamic> json) =>
      CurrentUser$SubscriptionRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class NewsArguments extends JsonSerializable with EquatableMixin {
  NewsArguments({this.orderBy});

  @override
  factory NewsArguments.fromJson(Map<String, dynamic> json) =>
      _$NewsArgumentsFromJson(json);

  final List<NewsOrderBy>? orderBy;

  @override
  List<Object?> get props => [orderBy];
  @override
  Map<String, dynamic> toJson() => _$NewsArgumentsToJson(this);
}

final NEWS_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'News'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'orderBy')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'news_order_by'), isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(
                value: ObjectValueNode(fields: [
              ObjectFieldNode(
                  name: NameNode(value: 'created_at'),
                  value: EnumValueNode(name: NameNode(value: 'desc')))
            ])),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'news'),
            alias: NameNode(value: 'news'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'order_by'),
                  value: VariableNode(name: NameNode(value: 'orderBy')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(name: NameNode(value: 'News'), directives: [])
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'News'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'news'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'created_at'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'updated_at'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'content'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'user_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ]))
]);

class NewsSubscription
    extends GraphQLQuery<News$SubscriptionRoot, NewsArguments> {
  NewsSubscription({required this.variables});

  @override
  final DocumentNode document = NEWS_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName = 'News';

  @override
  final NewsArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  News$SubscriptionRoot parse(Map<String, dynamic> json) =>
      News$SubscriptionRoot.fromJson(json);
}
