import 'package:dartz/dartz.dart';
import 'package:episode_admin/data/episode_response_converter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'episode_error_response.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class EpisodeErrorResponse {
  @JsonKey(name: 'code')
  int? code;
  @JsonKey(name: 'message')
  String? message;

  EpisodeErrorResponse({this.code, this.message});

  factory EpisodeErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$EpisodeErrorResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EpisodeErrorResponseToJson(this);
}

abstract class EpisodeError {
  int? get code;
  String? get message;
}

class ServerError extends EpisodeError {
  final String? _message;
  final int? _code;

  ServerError(this._code, this._message);

  @override
  String? get message => _message;

  @override
  int? get code => _code;
}

class UnknownError extends EpisodeError {
  Object? error;

  UnknownError(this.error);

  @override
  String? get message => error.toString();

  @override
  int? get code => null;
}

class EpisodeErrorMapper {
  EpisodeError map(Object? error) {
    try {
      var errorResponse = EpisodeErrorResponse.fromJson(error as Map<String, dynamic>);
      switch (errorResponse.code) {
        default:
          return ServerError(errorResponse.code, errorResponse.message);
      }
    } catch (e) {
      return UnknownError(e);
    }
  }

  EpisodeResult<T> mapAsLeft<T>(Object? error) => left(map(error));
}


