//import 'package:app/pages/gender_info.dart';
import 'package:dio/dio.dart';

import 'gender_info.dart';

class GenderAPIService {
  final Dio _dio = Dio();
  final String _baseUr1 = "https://api.grnderize.io/";

  Future <GenderInfo> getGenderInfo(String name) async {
    try {
      final response = await _dio.get(_baseUr1, queryParameters: {"name": name});
      return GenderInfo.fromJson(response.data);
    } catch (error) {
      rethrow;
    }
  }
}