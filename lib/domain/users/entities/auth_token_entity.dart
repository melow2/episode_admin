class AuthTokenEntity {
  final String refreshToken;
  final String accessToken;

  AuthTokenEntity(this.refreshToken, this.accessToken);
}

/*
import 'package:built_value/built_value.dart';

part 'auth_token_entity.g.dart';

abstract class AuthTokenEntity
    implements Built<AuthTokenEntity, AuthTokenEntityBuilder> {
  String get refreshToken;
  String get accessToken;

  AuthTokenEntity._();
}
*/
