import 'package:json_annotation/json_annotation.dart';

part 'auth_token_response.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class AuthTokenResponse {
  @JsonKey(name: 'accessToken')
  String? accessToken;
  @JsonKey(name: 'refreshToken')
  String? refreshToken;

  AuthTokenResponse({this.accessToken, this.refreshToken});

  factory AuthTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthTokenResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthTokenResponseToJson(this);
}
