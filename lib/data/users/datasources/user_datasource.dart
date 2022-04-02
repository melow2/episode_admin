import 'package:chopper/chopper.dart';
import 'package:episode_admin/core/network/episode_request_interceptor.dart';
import 'package:episode_admin/data/episode_response_converter.dart';
import 'package:episode_admin/data/users/models/user/auth_token/auth_token_request.dart';
import 'package:episode_admin/data/users/models/user/auth_token/auth_token_response.dart';

part 'user_datasource.chopper.dart';

@ChopperApi(baseUrl: "/member/v1")
abstract class UserDataSource extends ChopperService {
  static var customHeaders = {
    'content-type': 'application/json; charset=UTF-8',
    'Accept': 'application/json; charset=UTF-8',
    'Cache-Control': 'no-cache',
    'Connection': 'keep-alive',
  };

  static UserDataSource create() {
    final client = ChopperClient(
        baseUrl: "http://myboy7011.cafe24.com",
        services: [_$UserDataSource()],
        converter: EpisodeJsonConverter(
          {
            AuthTokenResponse: (jsonData) =>
                AuthTokenResponse.fromJson(jsonData)
          },
        ),
        errorConverter: const JsonConverter(),
        interceptors: [
          HeadersInterceptor(customHeaders),
          EpisodeRequestInterceptor(),
          HttpLoggingInterceptor()
        ]);
    return _$UserDataSource(client);
  }

  @Post(path: '/signin')
  Future<Response<AuthTokenResponse>> signin(@Body() AuthTokenRequest request);
}
