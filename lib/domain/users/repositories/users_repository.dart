import 'package:dartz/dartz.dart';
import 'package:episode_admin/data/episode_error_response.dart';
import 'package:episode_admin/domain/users/entities/auth_token_entity.dart';

abstract class UsersRepository {
  Future<Either<EpisodeErrorResponse, AuthTokenEntity>> signIn(
    String id,
    String password,
  );
}
