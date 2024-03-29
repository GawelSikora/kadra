import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kadra/repository.dart';
import 'package:kadra/usables.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit(this._repository, this._repositoryPlayers) : super(MainState());

  final Repository _repository;

  Future getSztab() async {
    emit(MainState(status: Status.loading));

    final repository = await _repository.sztabModel();

    if (repository == null) {
      emit(MainState(status: Status.error));
    }

    if (repository != null) {
      emit(MainState(
        status: Status.data,
        sztab: repository,
      ));
    }
  }

  final RepositoryPlayers _repositoryPlayers;

  Future getPlayers() async {
    emit(MainState(status: Status.loading));

    final players = await _repositoryPlayers.getPlayers();

    






  }
}
