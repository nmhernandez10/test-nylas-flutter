import 'dart:html';

import 'package:dio/dio.dart';
import 'package:test_nylas_flutter/config.dart';

const String clientId = '5fg8etjur98oypqfzc845v3l4';
const String clientSecret = '1mmyuf0e2xqypfusqlhkh3t42';

class HttpCalls {
  static final _dio = Dio(
    BaseOptions(baseUrl: Config.apiUrl),
  );

  static void getHttp() async {
    try {
      final response = await _dio.get('');
      print(response);
    } catch (e) {
      print(e);
    }
  }

  static void redirectToAuth() async {
    final url = Uri(
      scheme: 'https',
      host: 'api.nylas.com',
      path: '/oauth/authorize',
      queryParameters: {
        'client_id': Config.clientId,
        'client_secret': Config.clientSecret,
        'response_type': 'code',
        'scopes': 'calendar',
        'login_hint': 'example@example.com',
        'state': 'mycustomstate123',
        'redirect_uri': '${Config.apiUrl}/auth-callback',
      },
    );

    window.location.href = url.toString();
  }
}
