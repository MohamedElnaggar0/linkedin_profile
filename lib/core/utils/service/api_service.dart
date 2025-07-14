import 'package:dio/dio.dart';

class ApiService {
  final String _baseUrl = 'https://fresh-linkedin-profile-data.p.rapidapi.com';
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var response = await _dio.get('$_baseUrl/$endpoint');
    return response.data;
  }
}
