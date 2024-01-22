import 'dart:io';

import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';

import 'data/api_client.dart';
import 'data/auth_controller.dart';
import 'data/json_http_client.dart';
import 'data/sevices/shared_preferences.dart';

/// It is an error to use this provider without overriding it's value.
final appPrefsServiceProvider = Provider<AppPrefsService>(
      (ref) =>
  throw UnimplementedError(
    "Can't use this provider without overriding it's value.",),
);

final authControllerProvider =
StateNotifierProvider<AuthController, LoggedInUser?>(
      (ref) {
    final appPrefs = ref.watch(appPrefsServiceProvider);
    final initialState = AuthController.initialState(appPrefs);
    return AuthController(appPrefs, initialState);
  },
  dependencies: [appPrefsServiceProvider],
);

final apiBaseUrlProvider = Provider((ref) => 'http://216.250.8.232:4003');

final httpClientProvider = Provider(
      (ref) {
    final httpClient = JsonHttpClient();

    httpClient.dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          try {
            final authToken = ref
                .read(authControllerProvider)
                ?.authToken;
            if (authToken != null) {
              options.headers[HttpHeaders.authorizationHeader] =
              'Bearer $authToken';
            }
          } catch (e) {
            //ignored
          }
          handler.next(options);
        },
      ),
    );

    //don't rebuild provider, just change baseUrl for next requests
    ref.listen(
      apiBaseUrlProvider,
          (prev, next) {
        final apiBaseUrl = next;
        httpClient.dio.options.baseUrl = apiBaseUrl;
      },
      fireImmediately: true,
    );

    return httpClient;
  },
  dependencies: [
    apiBaseUrlProvider,
    authControllerProvider,
  ],
);

final apiClientProvider = Provider(
      (ref) => ApiClient(ref.watch(httpClientProvider)),
  dependencies: [httpClientProvider],
);
