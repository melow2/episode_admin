import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:episode_admin/data/episode_error_response.dart';

extension EpisodeEitherExt<T> on Response<T> {
  Either<EpisodeErrorResponse, T> toEpisodeEither()  {
    if (this.body != null) {
      return Right<EpisodeErrorResponse, T>(this.body!);
    } else {
      var json = jsonDecode(utf8.decode(bodyBytes));
      var errorResponse = EpisodeErrorResponse.fromJson(json);
      return Left(errorResponse);
    }
  }
}
