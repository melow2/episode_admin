import 'package:episode_admin/domain/users/entities/auth_token_entity.dart';

abstract class UsersRepository {
  Future<AuthTokenEntity> signIn();
}
