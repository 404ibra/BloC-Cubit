import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math' as math show Random;

class UserList {
  final Iterable<String> wordList = <String>[
    "A",
    "B",
    "C",
    "D",
    "F",
    "G",
    "H",
    "J",
    "I"
  ];
}

extension RandomElement<T> on Iterable<T> {
  T getRandomElement() => elementAt(math.Random().nextInt(length));
}

class FetchCubit extends Cubit<String?> {
  FetchCubit() : super(null);
  void getRandomName() => emit(UserList().wordList.getRandomElement());
}
