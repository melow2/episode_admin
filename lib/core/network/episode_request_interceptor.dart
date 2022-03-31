import 'dart:async';

import 'package:chopper/chopper.dart';

class EpisodeRequestInterceptor implements RequestInterceptor {
  // todo 여기서 헤더에 accessToken을 태워줘야 함.
  FutureOr<Request> onRequest(Request request) {
    var newRequest = applyHeader(
      request,
      'Accept',
      'application/json; charset=UTF-8',
    );
    return newRequest;
  }
}
