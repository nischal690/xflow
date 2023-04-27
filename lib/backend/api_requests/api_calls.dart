import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start OpenAI ChatGPT Group Code

class OpenAIChatGPTGroup {
  static String baseUrl = 'https://api.openai.com/v1';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static SendFullPromptCall sendFullPromptCall = SendFullPromptCall();
}

class SendFullPromptCall {
  Future<ApiCallResponse> call({
    String? apiKey = '',
    dynamic? promptJson,
  }) {
    final prompt = _serializeJson(promptJson);
    final body = '''
{
  "model": "gpt-3.5-turbo",
  "messages": ${prompt}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send Full Prompt',
      apiUrl: '${OpenAIChatGPTGroup.baseUrl}/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        ...OpenAIChatGPTGroup.headers,
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic role(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.role''',
      );
  dynamic content(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.content''',
      );
  dynamic createdTimestamp(dynamic response) => getJsonField(
        response,
        r'''$.created''',
      );
}

/// End OpenAI ChatGPT Group Code

class CurrencyconverterCall {
  static Future<ApiCallResponse> call({
    String? to = '',
    String? from = '',
    double? amount,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'currencyconverter',
      apiUrl: 'https://api.apilayer.com/exchangerates_data/convert?',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '3dDBhv949j6rpSN0FwXGOHdoDXdz7jgu',
      },
      params: {
        'to': to,
        'from': from,
        'amount': amount,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic covertedamount(dynamic response) => getJsonField(
        response,
        r'''$.result''',
      );
}

class LatlangtocountryCall {
  static Future<ApiCallResponse> call({
    String? latlng = '40.714224,-73.96145',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'latlangtocountry',
      apiUrl: 'rapidapi.com/v1/reverse',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '8eacd0c798msh5d736c4ec96c680p1429c6jsn85410a627166',
        'X-RapidAPI-Host': 'forward-reverse-geocoding.p.rapidapi.com',
        'Host': 'forward-reverse-geocoding.p.rapidapi.com',
      },
      params: {
        'lat': 41.8755616,
        'lon': -87.6244212,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CurrencyfromcountryCall {
  static Future<ApiCallResponse> call({
    String? shortform = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'currencyfromcountry',
      apiUrl: 'https://restcountries.com/v2/alpha/${shortform}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic currencies(dynamic response) => getJsonField(
        response,
        r'''$..currencies..code''',
      );
  static dynamic currenciessymbol(dynamic response) => getJsonField(
        response,
        r'''$.currencies[:].symbol''',
      );
}

class FlagsandshortformCall {
  static Future<ApiCallResponse> call({
    String? countryname = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'flagsandshortform',
      apiUrl:
          'https://restcountries.com/v3.1/name/${countryname}?fullText=true',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic countrynameshortform(dynamic response) => getJsonField(
        response,
        r'''$[:].cca3''',
      );
  static dynamic flag(dynamic response) => getJsonField(
        response,
        r'''$..flags.png''',
      );
}

class CurrentlatlangcountryCall {
  static Future<ApiCallResponse> call({
    String? lon = '',
    String? lat = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'currentlatlangcountry',
      apiUrl: 'https://nominatim.openstreetmap.org/reverse?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'lat': lat,
        'lon': lon,
        'format': "json",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic currentcountry(dynamic response) => getJsonField(
        response,
        r'''$.address.country''',
      );
}

class GetcitiesCall {
  static Future<ApiCallResponse> call({
    String? country = 'usa',
  }) {
    final body = '''
{
  "country": "${country}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getcities',
      apiUrl: 'https://countriesnow.space/api/v0.1/countries/cities',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic cities(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
