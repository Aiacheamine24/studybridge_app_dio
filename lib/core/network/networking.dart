import 'package:dio/dio.dart';
import 'package:dio_clean_learn/core/error/exceptions.dart';
import 'package:dio_clean_learn/core/network/connection_checker.dart';

abstract interface class Networking {
  /// This method is used to send a GET request.
  ///
  /// The [path] parameter is the URL path.
  /// The [queryParameters] parameter is the query parameters.
  /// The [options] parameter is the request options.
  Future<Response> get({
    required String path,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });

  /// This method is used to send a POST request.
  ///
  /// The [path] parameter is the URL path.
  /// The [data] parameter is the request data.
  /// The [queryParameters] parameter is the query parameters.
  /// The [options] parameter is the request options.
  Future<Response> post({
    required String path,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });

  /// This method is used to send a PUT request.
  ///
  /// The [path] parameter is the URL path.
  /// The [data] parameter is the request data.
  /// The [queryParameters] parameter is the query parameters.
  /// The [options] parameter is the request options.
  Future<Response> put({
    required String path,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });

  /// This method is used to send a DELETE request.
  ///
  /// The [path] parameter is the URL path.
  /// The [data] parameter is the request data.
  /// The [queryParameters] parameter is the query parameters.
  /// The [options] parameter is the request options.
  Future<Response> delete({
    required String path,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });
}

class NetworkingImpl implements Networking {
  // final ConnectionChecker connectionChecker;
  final Dio dio;

  /// This class is used to send HTTP requests.
  /// The [connectionChecker] parameter is the connection checker.
  /// The [dio] parameter is the Dio instance.
  /// The [NetworkingImpl] constructor is used to create an instance of the [NetworkingImpl] class.
  NetworkingImpl({
    // required this.connectionChecker,
    required this.dio,
  });

  @override
  Future<Response> get({
    required String path,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    return dio.get(
      path,
      queryParameters: queryParameters ?? {},
      options: options ?? Options(),
    );
  }

  @override
  Future<Response> post({
    required String path,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    return dio.post(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
    );
  }

  @override
  Future<Response> put({
    required String path,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    return dio.put(
      path,
      data: data,
      queryParameters: queryParameters ?? {},
      options: options ?? Options(),
    );
  }

  @override
  Future<Response> delete({
    required String path,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    return dio.delete(
      path,
      data: data,
      queryParameters: queryParameters ?? {},
      options: options ?? Options(),
    );
  }
}
