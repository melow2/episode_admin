// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpisodeErrorResponse _$EpisodeErrorResponseFromJson(
        Map<String, dynamic> json) =>
    EpisodeErrorResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$EpisodeErrorResponseToJson(
        EpisodeErrorResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };
