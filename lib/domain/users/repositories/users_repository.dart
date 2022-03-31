import 'package:dartz/dartz.dart';
import 'package:episode_admin/data/episode_error_response.dart';
import 'package:episode_admin/data/users/models/user/auth_token/auth_token_response.dart';
import 'package:episode_admin/domain/users/entities/auth_token_entity.dart';

abstract class UsersRepository {
  Future<Either<EpisodeErrorResponse, AuthTokenResponse>> signIn(
    String id,
    String password,
  );
}
