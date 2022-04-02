import 'package:dartz/dartz.dart';
import 'package:episode_admin/data/episode_error_response.dart';
import 'package:episode_admin/data/episode_response_converter.dart';
import 'package:episode_admin/data/users/datasources/user_datasource.dart';
import 'package:episode_admin/data/users/models/user/auth_token/auth_token_request.dart';
import 'package:episode_admin/data/users/models/user/mapper.dart';
import 'package:episode_admin/domain/users/entities/auth_token_entity.dart';
import 'package:episode_admin/domain/users/repositories/users_repository.dart';

class UsersRepositoryImpl implements UsersRepository {
  final UserDataSource userDataSource;
  final EpisodeErrorMapper errorMapper = EpisodeErrorMapper();

  UsersRepositoryImpl(this.userDataSource);

  @override
  Future<EpisodeResult<AuthTokenEntity>> signIn(
    String id,
    String password,
  ) async {
    return userDataSource
        .signin(AuthTokenRequest(id: id, password: password))
        .then((value) => value.toRight((value) => value.toEntity()))
        .onError((error, stackTrace) => errorMapper.mapAsLeft(error));
  }
}
