import 'package:episode_admin/data/episode_response_converter.dart';
import 'package:episode_admin/domain/users/entities/auth_token_entity.dart';

abstract class UsersRepository {
  Future<EpisodeResult<AuthTokenEntity>>signIn(
    String id,
    String password,
  );
}
