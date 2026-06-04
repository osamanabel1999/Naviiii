import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetCheckWXCall {
  static Future<ApiCallResponse> call({
    String? icao = 'HECA',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getCheckWX',
      apiUrl: 'https://api.checkwx.com/metar/${icao}/decoded',
      callType: ApiCallType.GET,
      headers: {
        'x-api-key': '7d86d6268d884ddfa3868d7d62e02490',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTAFCall {
  static Future<ApiCallResponse> call({
    String? icao = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetTAF',
      apiUrl: 'https://api.checkwx.com/taf/${icao}/decoded',
      callType: ApiCallType.GET,
      headers: {
        'x-api-key': '7d86d6268d884ddfa3868d7d62e02490',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAirportInfoCall {
  static Future<ApiCallResponse> call({
    String? icao = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetAirportInfo',
      apiUrl: 'https://api.flightplandatabase.com/nav/airport/${icao}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VatsimDataCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'VatsimData',
      apiUrl: 'https://data.vatsim.net/v3/vatsim-data.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? atisss(dynamic response) => getJsonField(
        response,
        r'''$.atis''',
        true,
      ) as List?;
}

class PirepCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'PIREP',
      apiUrl:
          'https://aviationweather.gov/api/data/pirep?format=json&bbox=40,-85,55,-65&hours=24',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

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
