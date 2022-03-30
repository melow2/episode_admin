// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_token_entity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthTokenEntity extends AuthTokenEntity {
  @override
  final String refreshToken;
  @override
  final String accessToken;

  factory _$AuthTokenEntity([void Function(AuthTokenEntityBuilder)? updates]) =>
      (new AuthTokenEntityBuilder()..update(updates)).build();

  _$AuthTokenEntity._({required this.refreshToken, required this.accessToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        refreshToken, 'AuthTokenEntity', 'refreshToken');
    BuiltValueNullFieldError.checkNotNull(
        accessToken, 'AuthTokenEntity', 'accessToken');
  }

  @override
  AuthTokenEntity rebuild(void Function(AuthTokenEntityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthTokenEntityBuilder toBuilder() =>
      new AuthTokenEntityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthTokenEntity &&
        refreshToken == other.refreshToken &&
        accessToken == other.accessToken;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, refreshToken.hashCode), accessToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthTokenEntity')
          ..add('refreshToken', refreshToken)
          ..add('accessToken', accessToken))
        .toString();
  }
}

class AuthTokenEntityBuilder
    implements Builder<AuthTokenEntity, AuthTokenEntityBuilder> {
  _$AuthTokenEntity? _$v;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  AuthTokenEntityBuilder();

  AuthTokenEntityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refreshToken = $v.refreshToken;
      _accessToken = $v.accessToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthTokenEntity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthTokenEntity;
  }

  @override
  void update(void Function(AuthTokenEntityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthTokenEntity build() {
    final _$result = _$v ??
        new _$AuthTokenEntity._(
            refreshToken: BuiltValueNullFieldError.checkNotNull(
                refreshToken, 'AuthTokenEntity', 'refreshToken'),
            accessToken: BuiltValueNullFieldError.checkNotNull(
                accessToken, 'AuthTokenEntity', 'accessToken'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
