part of 'main_cubit.dart';

class MainState {
  MainState({
    this.sztab = const [],
    this.status = Status.initial,
  });

  final List sztab;
  final Status status;
}
