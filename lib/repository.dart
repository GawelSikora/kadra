import 'package:dio/dio.dart';
import 'package:kadra/usables.dart';

class Repository {
  Future<List?> getSztab() async {
    final dio = Dio();

    final response = await dio.get(
        'https://my-json-server.typicode.com/GawelSikora/kadra_json/sztab');

    final responseData = response.data;

    if (responseData != null) {
      final dataList = responseData["czlonkowie"] as List;

      return dataList;
    }

    return null;
  }
}
