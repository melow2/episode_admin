import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:episode_admin/data/episode_error_response.dart';

extension EpisodeEitherExt<R> on Response<R> {
  Either<EpisodeErrorResponse, Entity> toEither<Entity>(
      Function1<R, Entity> toEntity) {
    if (this.body != null) {
      return Right<EpisodeErrorResponse, Entity>(toEntity(this.body!));
    } else {
      var json = jsonDecode((error?.toString() ?? ""));
      var errorResponse = EpisodeErrorResponse.fromJson(json);
      return Left(errorResponse);
    }
  }
}
