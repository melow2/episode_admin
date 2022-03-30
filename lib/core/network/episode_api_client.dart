import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'episode_api_client.g.dart';

@RestApi(baseUrl: "http://myboy7011.cafe24.com/")
abstract class EpisodeApiClient {
  factory EpisodeApiClient(Dio dio, {String baseUrl}) = _EpisodeApiClient;
}
