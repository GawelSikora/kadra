import 'package:flutter/cupertino.dart';
import 'package:kadra/Pages/data_source.dart';
import 'package:kadra/usables.dart';

class Repository {
  Repository(this._dataSource);

  final DataSource _dataSource;

  Future<List<SztabModel>?> sztabModel() async {
    final usableList = await _dataSource.getSztab();

    if (usableList == null) {
      return null;
    }

    final listOfSztab = usableList
        .map((e) => SztabModel(
            pozycja: e["pozycja"], name: e["imie"], imageURL: e[" URL"]))
        .toList();

    return listOfSztab;
  }
}

class RepositoryPlayers {
  RepositoryPlayers(this._dataSourcePlayers);

  DataSourcePlayers _dataSourcePlayers;
 


   Future getPlayers() async {
    final players = await  _dataSourcePlayers.getPlayersSnapshot();




  
    return players;
  }
}
