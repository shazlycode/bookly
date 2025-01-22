import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
            errorMessage: "Connection time out, Please try later!");
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: "Send time out, Please try later!");

      case DioExceptionType.receiveTimeout:
        return ServerFailure(
            errorMessage: "receive time out, Please try later!");

      case DioExceptionType.badCertificate:
        return ServerFailure(
            errorMessage: "Bad Certificate, Please try later!");

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure(
            errorMessage: "Canceled Request, Please try later!");

      case DioExceptionType.connectionError:
        if (dioException.message!.contains("SocketException")) {
          return ServerFailure(
              errorMessage: "Connection Error, Please try later!");
        }
        return ServerFailure(errorMessage: "Unkonown Error, Please try later!");

      case DioExceptionType.unknown:
        return ServerFailure(errorMessage: "Unkonown Error, Please try later!");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 401 || statusCode == 400 || statusCode == 403) {
      return ServerFailure(errorMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(errorMessage: "Method not found");
    } else if (statusCode == 405) {
      return ServerFailure(errorMessage: "unkonown error, try agane later!!!");
    } else {
      return ServerFailure(errorMessage: "Opps, unknown Error");
    }
  }
}
