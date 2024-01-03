import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';

import 'exceptions.dart';

// ignore: strict_raw_type
extension _HttpResponseX on Response {
  bool get isSuccess => statusCode != null && statusCode! >= 200 && statusCode! < 300;
}

class JsonHttpClient {
  late final Dio dio;

  JsonHttpClient() {
    final jsonDio = Dio(
      BaseOptions(
        listFormat: ListFormat.multiCompatible,
        responseType: ResponseType.plain,
        headers: <String, dynamic>{
          HttpHeaders.acceptHeader: 'application/json',
          HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
        },
      ),
    );
    dio = jsonDio;
  }

  Future<T> get<T>(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    required T Function(dynamic responseData) mapper,
  }) async {
    String? data;
    try {
      final response = await dio.get<String>(
        endpoint,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      if (!response.isSuccess) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
          type: DioExceptionType.badResponse,
        );
      }
      data = response.data;
    } on DioException catch (e) {
      log(e.toString());
      switch (e.type) {
        case DioExceptionType.badCertificate:
        case DioExceptionType.connectionError:
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.unknown:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          throw const HttpTimeoutException();
        case DioExceptionType.badResponse:
          final Response<dynamic>? response = e.response;
          if (response != null) {
            throw HttpStatusException(
              response.statusCode ?? 0,
              response.statusMessage ?? '',
              uri: response.realUri,
            );
          }
          throw NetworkIOException(e);
        case DioExceptionType.cancel:
          throw const NetworkCallCanceledException();
      }
    } catch (e) {
      log(e.toString());
      throw NetworkIOException(e);
    }

    try {
      return mapper(data != null ? jsonDecode(data) : null);
    } catch (e) {
      log(e.toString());
      throw JsonIOException(e);
    }
  }

  Future<T> post<T>(
    String endpoint, {
    dynamic body,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required T Function(dynamic responseData) mapper,
    //crutch
    bool needDecodeBody = true,
  }) async {
    String? data;
    try {
      final response = await dio.post<String>(
        endpoint,
        data: body,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      if (!response.isSuccess) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
          type: DioExceptionType.badCertificate,
        );
      }
      data = response.data;
    } on DioException catch (e) {
      switch (e.type) {
        case DioExceptionType.badCertificate:
        case DioExceptionType.connectionError:
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.unknown:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          throw const HttpTimeoutException();
        case DioExceptionType.badResponse:
          final Response<dynamic>? response = e.response;
          if (response != null) {
            throw HttpStatusException(
              response.statusCode ?? 0,
              response.statusMessage ?? '',
              uri: response.realUri,
              responseBody: response.data,
            );
          }
          throw NetworkIOException(e);
        case DioExceptionType.cancel:
          throw const NetworkCallCanceledException();
      }
    } catch (e) {
      throw NetworkIOException(e);
    }

    try {
      return mapper(needDecodeBody && data != null ? jsonDecode(data) : null);
    } catch (e) {
      log(e.toString());
      throw JsonIOException(e);
    }
  }

  void close({bool force = false}) => dio.close(force: force);

  Future<T> put<T>(
    String endpoint, {
    dynamic body,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required T Function(dynamic responseData) mapper,
    //crutch
    bool needDecodeBody = true,
  }) async {
    String? data;
    try {
      final response = await dio.put<String>(
        endpoint,
        data: body,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      if (!response.isSuccess) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
          type: DioExceptionType.badResponse,
        );
      }
      data = response.data;
    } on DioException catch (e) {
      switch (e.type) {
        case DioExceptionType.badCertificate:
        case DioExceptionType.connectionError:
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.unknown:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          throw const HttpTimeoutException();
        case DioExceptionType.badResponse:
          final Response<dynamic>? response = e.response;
          if (response != null) {
            throw HttpStatusException(
              response.statusCode ?? 0,
              response.statusMessage ?? '',
              uri: response.realUri,
              responseBody: response.data,
            );
          }
          throw NetworkIOException(e);
        case DioExceptionType.cancel:
          throw const NetworkCallCanceledException();
      }
    } catch (e) {
      throw NetworkIOException(e);
    }

    try {
      return mapper(needDecodeBody && data != null ? jsonDecode(data) : null);
    } catch (e) {
      throw JsonIOException(e);
    }
  }
}
