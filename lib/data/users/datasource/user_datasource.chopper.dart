// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_datasource.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$UserDataSource extends UserDataSource {
  _$UserDataSource([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = UserDataSource;

  @override
  Future<Response<AuthTokenResponse>> signin(AuthTokenRequest request) {
    final $url = '/member/v1/signin';
    final $body = request;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<AuthTokenResponse, AuthTokenResponse>($request);
  }
}
