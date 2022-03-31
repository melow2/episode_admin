import 'package:dartz/dartz.dart';
import 'package:episode_admin/data/episode_error_response.dart';
import 'package:episode_admin/domain/users/entities/auth_token_entity.dart';
import 'package:episode_admin/domain/users/repositories/users_repository.dart';

class SignInUsecase {
  final UsersRepository usersRepository;

  const SignInUsecase(this.usersRepository);

  Future<Either<EpisodeErrorResponse, AuthTokenEntity>> call(
          String id, String password) =>
      usersRepository.signIn(id, password);
}
