import 'package:episode_admin/domain/users/entities/auth_token_entity.dart';
import 'package:episode_admin/domain/users/repositories/users_repository.dart';

class UsersRepositoryImpl implements UsersRepository {
  @override
  Future<AuthTokenEntity> signIn(String id, String password) async {
    return AuthTokenEntity.Intial();
  }
}
