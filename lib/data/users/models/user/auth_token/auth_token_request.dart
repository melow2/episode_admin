import 'package:json_annotation/json_annotation.dart';

part 'auth_token_request.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class AuthTokenRequest {
  @JsonKey(name: 'id')
  String id;
  @JsonKey(name: 'password')
  String password;

  AuthTokenRequest({required this.id, required this.password});

  factory AuthTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$AuthTokenRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AuthTokenRequestToJson(this);
}
