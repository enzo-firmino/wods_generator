import 'dart:io';

import 'package:http/http.dart' as http;

const String apiUrl = 'https://wod-generator-a6gxgwdziq-uc.a.run.app';

class WodApi {
  Future<http.Response> getWods(String? prompt) async {
    // final uri = Uri.https(
    //   apiUrl,
    //   '/generator/',
    //   {
    //     'prompt': prompt,
    //   },
    // );
    http.Response response = await http.get(Uri.parse(
        'https://wod-generator-a6gxgwdziq-uc.a.run.app/generator/?prompt=%3Cprompt%20utilisateur%3E'));
    if (response.statusCode != 200) {
      throw HttpException('${response.statusCode}');
    }
    return response;
  }
}
