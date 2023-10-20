import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
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
  }) async {
    final prompt = _serializeJson(promptJson);
    final ffApiRequestBody = '''
{
  "model": "gpt-3.5-turbo",
  "messages": ${prompt}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send Full Prompt',
      apiUrl: '${OpenAIChatGPTGroup.baseUrl}/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
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

/// Start paypal Group Code

class PaypalGroup {
  static String baseUrl = 'https://api-m.sandbox.paypal.com';
  static Map<String, String> headers = {};
  static GenerateAccessTokenCall generateAccessTokenCall =
      GenerateAccessTokenCall();
  static PaymentsCall paymentsCall = PaymentsCall();
}

class GenerateAccessTokenCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'generate access token',
      apiUrl: '${PaypalGroup.baseUrl}/v1/oauth2/token',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
        'Authorization':
            'Basic QWJOaWRiYUJxaHNOOG1rNmY3cWxlSHhWYTVtUDc4ZUhLMkJ3dU5id3MtVHRxaVQtdFFOd1FHWWhLcFhjVWdZNFZwU1lKdTlFT0tYdUdSZjkwOkVMd2Z6UGpoaktnTng0My16TnVNOVlfT200Mmt3WWVsei1nSUozN3liOS1JZ0EtLV9vbzZqSnlmTzQ2MXhZSzhtYWM1NzRyeEhUMkhWZXc=',
      },
      params: {
        'grant_type': "client_credentials",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class PaymentsCall {
  Future<ApiCallResponse> call({
    String? accesstoken =
        'A21AAKAE51mvuBW67CaYhooul56kQC4kcsi5xUxs1m4uCSGIXokQXxfFIswb7NZlQrt9-BOvzEf5AnWaIpPtLq701v4eAbaJg',
  }) async {
    final ffApiRequestBody = '''
{
  "intent": "sale",
  "payer": {
    "payment_method": "paypal"
  },
  "transactions": [
    {
      "amount": {
        "total": "30.11",
        "currency": "USD",
        "details": {
          "subtotal": "30.00",
          "tax": "0.07",
          "shipping": "0.03",
          "handling_fee": "1.00",
          "shipping_discount": "-1.00",
          "insurance": "0.01"
        }
      },
      "description": "The payment transaction description.",
      "custom": "EBAY_EMS_90048630024435",
      "invoice_number": "48787589673",
      "payment_options": {
        "allowed_payment_method": "INSTANT_FUNDING_SOURCE"
      },
      "soft_descriptor": "ECHI5786786",
      "item_list": {
        "items": [
          {
            "name": "hat",
            "description": "Brown hat.",
            "quantity": "5",
            "price": "3",
            "tax": "0.01",
            "sku": "1",
            "currency": "USD"
          },
          {
            "name": "handbag",
            "description": "Black handbag.",
            "quantity": "1",
            "price": "15",
            "tax": "0.02",
            "sku": "product34",
            "currency": "USD"
          }
        ],
        "shipping_address": {
          "recipient_name": "Brian Robinson",
          "line1": "4th Floor",
          "line2": "Unit #34",
          "city": "San Jose",
          "country_code": "US",
          "postal_code": "95131",
          "phone": "011862212345678",
          "state": "CA"
        }
      }
    }
  ],
  "note_to_payer": "Contact us for any questions on your order.",
  "redirect_urls": {
    "return_url": "https://example.com/return",
    "cancel_url": "https://example.com/cancel"
  }
}' ''';
    return ApiManager.instance.makeApiCall(
      callName: 'payments',
      apiUrl: '${PaypalGroup.baseUrl}/v1/payments/payment',
      callType: ApiCallType.POST,
      headers: {
        'Content-type': 'application/json',
        'Authorization':
            'Bearer A21AAKAE51mvuBW67CaYhooul56kQC4kcsi5xUxs1m4uCSGIXokQXxfFIswb7NZlQrt9-BOvzEf5AnWaIpPtLq701v4eAbaJg',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End paypal Group Code

class CurrencyconverterCall {
  static Future<ApiCallResponse> call({
    String? to = '',
    String? from = '',
    double? amount,
  }) async {
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
  }) async {
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
  }) async {
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
  }) async {
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
  }) async {
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
  }) async {
    final ffApiRequestBody = '''
{
  "country": "${country}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getcities',
      apiUrl: 'https://countriesnow.space/api/v0.1/countries/cities',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
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

class StripepaymentIntentCall {
  static Future<ApiCallResponse> call({
    String? transactionid = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'stripepayment intent',
      apiUrl: 'https://api.stripe.com/v1/payment_intents/${transactionid}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer sk_test_51Nt4bnEeDxhnTeYJDYm8CHlklrDNOJmAWfnPuho58poep2lV3thyDloKOlsBqBq3dbBdPtK741I1joc0dM1VCokz00aTVJ00KK',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic getcharge(dynamic response) => getJsonField(
        response,
        r'''$.latest_charge''',
      );
}

class StripeGetTransactionIdCall {
  static Future<ApiCallResponse> call({
    String? chargeid = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'stripe get transaction id',
      apiUrl: 'https://api.stripe.com/v1/charges/${chargeid}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer sk_test_51Nt4bnEeDxhnTeYJDYm8CHlklrDNOJmAWfnPuho58poep2lV3thyDloKOlsBqBq3dbBdPtK741I1joc0dM1VCokz00aTVJ00KK',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic transactionid(dynamic response) => getJsonField(
        response,
        r'''$.balance_transaction''',
      );
}

class StripeGetTransactionDetailsCall {
  static Future<ApiCallResponse> call({
    String? transactionid = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'stripe get transaction details',
      apiUrl: 'https://api.stripe.com/v1/balance_transactions/${transactionid}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer sk_test_51Nt4bnEeDxhnTeYJDYm8CHlklrDNOJmAWfnPuho58poep2lV3thyDloKOlsBqBq3dbBdPtK741I1joc0dM1VCokz00aTVJ00KK',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic netamount(dynamic response) => getJsonField(
        response,
        r'''$.net''',
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

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
