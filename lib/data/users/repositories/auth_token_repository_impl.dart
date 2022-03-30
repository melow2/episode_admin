import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:episode_admin/data/episode_error_response.dart';
import 'package:episode_admin/data/users/datasource/user_datasource.dart';
import 'package:episode_admin/data/users/models/user/auth_token/auth_token_request.dart';
import 'package:episode_admin/data/users/models/user/auth_token/auth_token_response.dart';
import 'package:episode_admin/data/users/models/user/mapper.dart';
import 'package:episode_admin/domain/users/entities/auth_token_entity.dart';
import 'package:episode_admin/domain/users/repositories/users_repository.dart';

class UsersRepositoryImpl implements UsersRepository {
  final UserDataSource userDataSource;

  UsersRepositoryImpl(this.userDataSource);

  @override
  Future<Either<EpisodeErrorResponse, AuthTokenEntity>> signIn(
      String id, String password) async {
    return userDataSource
        .signin(
      AuthTokenRequest(
        id: id,
        password: password,
      ),
    )
        .then(
      (value) {
        if (value.body != null) {
          return Right<EpisodeErrorResponse, AuthTokenEntity>(
            value.body.toEntity(),
          );
        } else {
          var json = jsonDecode(utf8.decode(value.bodyBytes));
          var errorResponse = EpisodeErrorResponse.fromJson(json);
          return Left(errorResponse);
        }
      },
    );
  }
}
