import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_token_response.g.dart';

@JsonSerializable()
class AuthTokenResponse extends Equatable {
  final String? accessToken;
  final String? refreshToken;

  const AuthTokenResponse({this.accessToken, this.refreshToken});

  factory AuthTokenResponse.fromJson(Map<String, dynamic> json) {
    return _$AuthTokenResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AuthTokenResponseToJson(this);

  AuthTokenResponse copyWith({
    String? accessToken,
    String? refreshToken,
  }) {
    return AuthTokenResponse(
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [accessToken, refreshToken];
}
