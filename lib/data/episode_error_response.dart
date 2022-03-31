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
