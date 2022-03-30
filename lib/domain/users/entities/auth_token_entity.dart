import 'package:built_value/built_value.dart';

part 'auth_token_entity.g.dart';

abstract class AuthTokenEntity
    implements Built<AuthTokenEntity, AuthTokenEntityBuilder> {
  String get refreshToken;

  String get accessToken;

  AuthTokenEntity._();

  factory AuthTokenEntity([void Function(AuthTokenEntityBuilder)? updates]) =
      _$AuthTokenEntity;

  factory AuthTokenEntity.Intial() {
    return AuthTokenEntity(
      (b) => b
        ..refreshToken = ""
        ..accessToken = "",
    );
  }
}
