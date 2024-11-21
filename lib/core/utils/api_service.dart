// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  ApiService({
    required this.dio,
  });
  final baseUrl = "https://www.googleapis.com/books/v1/";

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get('$baseUrl$endPoint');
    return response.data;
  }
}
