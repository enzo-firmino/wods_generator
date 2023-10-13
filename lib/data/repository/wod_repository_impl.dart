import 'dart:convert';

import 'package:http/http.dart';
import 'package:wods_generator/data/datasource/wod_api.dart';
import 'package:wods_generator/domain/model/wod/wod.dart';
import 'package:wods_generator/domain/repository/wod_repository.dart';

class WodRepositoryImpl implements WodRepository {
  final WodApi _wodApi;

  const WodRepositoryImpl({
    required WodApi wodApi,
  }) : _wodApi = wodApi;

  @override
  Future<List<Wod>> getWods({String? prompt}) async {
    Response response = await _wodApi.getWods(prompt);
    var jsonResponse = jsonDecode(response.body);
    List<dynamic> wodsJson;
    if (jsonResponse.runtimeType == List) {
      wodsJson = jsonResponse;
    } else {
      wodsJson = jsonResponse['wods'];
    }
    return List<Wod>.from(wodsJson.map((json) => Wod.fromJson(json)));
  }
}
