import 'package:dartz/dartz.dart';
import 'package:episode_admin/data/episode_error_response.dart';
import 'package:episode_admin/data/users/datasource/user_datasource.dart';
import 'package:episode_admin/data/users/models/user/auth_token/auth_token_request.dart';
import 'package:episode_admin/data/users/models/user/auth_token/auth_token_response.dart';
import 'package:episode_admin/domain/users/repositories/users_repository.dart';
import 'package:episode_admin/util/either.dart';

class UsersRepositoryImpl implements UsersRepository {
  final UserDataSource userDataSource;

  UsersRepositoryImpl(this.userDataSource);

  @override
  Future<Either<EpisodeErrorResponse, AuthTokenResponse>> signIn(
    String id,
    String password,
  ) async {

    return userDataSource
        .signin(AuthTokenRequest(id: id, password: password))
        .then((value) {
      var response = value.toEpisodeEither();
          if(response.isRight()){
            return right(response);
          }
    });
  }
}
