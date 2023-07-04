import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:kadra/usables.dart';

class DataSource {
  Future<List?> getSztab() async {
    final dio = Dio();

    final response = await dio.get<Map<String, dynamic>>(
        'https://my-json-server.typicode.com/GawelSikora/kadra_json/sztab');

    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    final List dataList = responseData["czlonkowie"] as List;

    return dataList;
  }
}

class DataSourcePlayers {
  getPlayersSnapshot() {
   
   


    final playersQuerry =
        FirebaseFirestore.instance.collection('players').snapshots();

    print(playersQuerry);

    return playersQuerry;
  }
}
