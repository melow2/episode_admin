import 'package:episode_admin/core/network/episode_api_client.dart';
import 'package:episode_admin/domain/users/entities/auth_token_entity.dart';
import 'package:episode_admin/domain/users/repositories/users_repository.dart';
import 'package:dio/dio.dart';

class UsersRepositoryImpl implements UsersRepository {
  // di datasource

  @override
  Future<AuthTokenEntity> signIn() {}
}
