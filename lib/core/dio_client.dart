import 'dart:io';

import 'package:cekcuaca/core/constants.dart';
import 'package:chuck_interceptor/chuck.dart';
import 'package:dio/dio.dart';

abstract class DioClient {
  Future<Response<T>> get<T>(String path,
      {Map<String, dynamic>? queryParameters});

  Future<Response<T>> post<T>(String path, {required body});

  Future<Response<T>> delete<T>(String path,
      {Map<String, dynamic>? queryParameters});
}

class DioClientImpl implements DioClient {
  late Dio _dio;
  final Chuck chuck;

  DioClientImpl({required this.chuck}) {
    _initApiClient();
  }

  void _initApiClient() {
    BaseOptions options = BaseOptions(
      baseUrl: Constants.baseUrl,
      headers: {
        HttpHeaders.contentTypeHeader: "application/json",
        "apikey": Constants.apiKey
      },
      responseType: ResponseType.json,
    );
    _dio = Dio(options)..interceptors.add(chuck.getDioInterceptor());
  }

  @override
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.get<T>(
        path,
        queryParameters: queryParameters,
      );

      return response;
    } catch (e) {
      if (e is DioException) {
        if (e.response?.data != null) {
          throw Exception(e.response?.statusMessage);
        }
      }
      throw Exception(e);
    }
  }

  @override
  Future<Response<T>> post<T>(
    String path, {
    required body,
    bool authorization = false,
  }) async {
    try {
      final response = await _dio.post<T>(path, data: body);

      return response;
    } catch (e) {
      if (e is DioException) {
        if (e.response?.data != null) {
          throw Exception(e.response?.statusMessage);
        }
      }
      throw Exception(e);
    }
  }

  @override
  Future<Response<T>> delete<T>(String path,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      final response =
          await _dio.delete<T>(path, queryParameters: queryParameters);

      return response;
    } catch (e) {
      if (e is DioException) {
        if (e.response?.data != null) {
          throw Exception(e.response?.statusMessage);
        }
      }
      throw Exception(e);
    }
  }
}
