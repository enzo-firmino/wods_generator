import 'package:wods_generator/domain/model/wod/wod.dart';

abstract class WodRepository {
  Future<List<Wod>> getWods({String? prompt});
}
