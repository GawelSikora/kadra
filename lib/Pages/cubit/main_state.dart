part of 'main_cubit.dart';

class MainState {
  MainState({
    this.sztab = const [],
    this.status = Status.initial,
    this.firebaseSnapshot = const [],
  });

  final List sztab;
  final Status status;
  final dynamic firebaseSnapshot;
}
