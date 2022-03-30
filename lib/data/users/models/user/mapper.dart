import 'package:episode_admin/data/users/models/user/auth_token/auth_token_response.dart';
import 'package:episode_admin/domain/users/entities/auth_token_entity.dart';

extension AuthTokenMapper on AuthTokenResponse? {
  AuthTokenEntity toEntity() {
    return AuthTokenEntity(
      (b) => b
        ..accessToken = this?.accessToken ?? ''
        ..refreshToken = this?.refreshToken ?? '',
    );
  }
}
