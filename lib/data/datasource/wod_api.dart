import 'dart:io';
import 'package:dio/dio.dart';

const String baseUrl = 'https://wod-generator-a6gxgwdziq-uc.a.run.app';

class WodApi {
  final _dio = Dio(BaseOptions(baseUrl: baseUrl));

  Future<Response> getWods(String? prompt) async {
    Response response = await _dio.get(
      'https://wod-generator-a6gxgwdziq-uc.a.run.app/generator/',
      queryParameters: {'prompt': prompt},
    );
    if (response.statusCode != 200) {
      throw HttpException('${response.statusCode}');
    }
    return response;
  }
}
