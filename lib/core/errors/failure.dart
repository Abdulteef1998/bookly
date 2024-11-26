import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromDioError(DioError e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
            "Connection timed out. Please check your internet connection.");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send request timed out. Please try again later.");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive data timed out. Please try again later.");
      case DioExceptionType.badCertificate:
        return ServerFailure(
            "Invalid certificate. Please check your security settings.");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            e.response!.statusCode, e.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("Request was cancelled.");
      case DioExceptionType.connectionError:
        return ServerFailure(
            "Connection error. Please check your internet connection.");
      case DioExceptionType.unknown:
        return ServerFailure(
            "An unknown error occurred. Please try again later.");
    }
  }
  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 404) {
      return ServerFailure(
          'Your request was not found, please try again later.');
    } else if (statusCode == 500) {
      return ServerFailure(
          'There is a problem with server  , please try again later.');
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else {
      return ServerFailure('There was an error , please try again later');
    }
  }
}
