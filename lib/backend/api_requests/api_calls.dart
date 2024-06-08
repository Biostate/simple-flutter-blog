import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start DummyAPI Group Code

class DummyAPIGroup {
  static String getBaseUrl() => 'https://dummyapi.io/data/v1/';
  static Map<String, String> headers = {
    'app-id': '6663861c3077548ffeeda889',
  };
  static GetPostsCall getPostsCall = GetPostsCall();
  static DeletePostCall deletePostCall = DeletePostCall();
  static CreatePostCall createPostCall = CreatePostCall();
}

class GetPostsCall {
  Future<ApiCallResponse> call({
    List<int>? pageList,
    int? limit = 10,
  }) async {
    final baseUrl = DummyAPIGroup.getBaseUrl();
    final page = _serializeList(pageList);

    return ApiManager.instance.makeApiCall(
      callName: 'Get Posts',
      apiUrl: '${baseUrl}post',
      callType: ApiCallType.GET,
      headers: {
        'app-id': '6663861c3077548ffeeda889',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<String>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? image(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? likes(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].likes''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List? tags(dynamic response) => getJsonField(
        response,
        r'''$.data[:].tags''',
        true,
      ) as List?;
  List<String>? text(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].text''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? publishDate(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].publishDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? owner(dynamic response) => getJsonField(
        response,
        r'''$.data[:].owner''',
        true,
      ) as List?;
  List<String>? ownerId(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].owner.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? ownerFirstName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].owner.firstName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? ownerLastName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].owner.lastName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? total(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.total''',
      ));
  int? page(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.page''',
      ));
  int? limit(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.limit''',
      ));
}

class DeletePostCall {
  Future<ApiCallResponse> call({
    String? postId = '',
  }) async {
    final baseUrl = DummyAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Post',
      apiUrl: '${baseUrl}post/${postId}',
      callType: ApiCallType.DELETE,
      headers: {
        'app-id': '6663861c3077548ffeeda889',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class CreatePostCall {
  Future<ApiCallResponse> call({
    String? text = '',
    String? image = '',
    int? likes,
  }) async {
    final baseUrl = DummyAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Create Post',
      apiUrl: '${baseUrl}post/create',
      callType: ApiCallType.POST,
      headers: {
        'app-id': '6663861c3077548ffeeda889',
      },
      params: {
        'text': text,
        'image': image,
        'owner': "66638a9995f0a77385d2fd1d",
        'likes': likes,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? text(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.text''',
      ));
}

/// End DummyAPI Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
