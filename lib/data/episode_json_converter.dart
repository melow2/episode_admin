import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:episode_admin/data/episode_error_response.dart';

class EpisodeJsonConverter extends JsonConverter {
  final Map<Type, Function> typeToJsonFactoryMap;

  const EpisodeJsonConverter(this.typeToJsonFactoryMap);

  @override
  Response<BodyType> convertResponse<BodyType, InnerType>(Response response) {
    return response.copyWith(
      body: fromJsonData<BodyType, InnerType>(
        utf8.decode(response.bodyBytes),
        typeToJsonFactoryMap[InnerType]!,
      ),
    );
  }

  T fromJsonData<T, InnerType>(String jsonData, Function jsonParser) {
    var jsonMap = json.decode(jsonData);

    if (jsonMap is List) {
      return jsonMap
          .map((item) => jsonParser(item as Map<String, dynamic>) as InnerType)
          .toList() as T;
    }

    return jsonParser(jsonMap);
  }
}