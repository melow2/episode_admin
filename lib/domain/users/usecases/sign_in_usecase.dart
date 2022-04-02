import 'package:episode_admin/data/episode_response_converter.dart';
import 'package:episode_admin/domain/users/entities/auth_token_entity.dart';
import 'package:episode_admin/domain/users/repositories/users_repository.dart';

class SignInUsecase {
  final UsersRepository usersRepository;

  const SignInUsecase(this.usersRepository);

  Future<EpisodeResult<AuthTokenEntity>> call(
    String id,
    String password,
  ) =>
      usersRepository.signIn(id, password);
}
