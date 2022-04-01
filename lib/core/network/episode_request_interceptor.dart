import 'dart:async';

import 'package:chopper/chopper.dart';

class EpisodeRequestInterceptor implements RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) {
    return applyHeader(request, 'auth_token', 'Bearer');
  }
}