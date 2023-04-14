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
