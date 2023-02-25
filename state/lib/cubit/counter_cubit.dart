import 'package:flutter_bloc/flutter_bloc.dart';

class CounterState {
  int count = 0;
  CounterState({required this.count});
}

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(count: 0));

  void incrementCount() {
    emit(CounterState(count: state.count + 1));
  }

  void decrementCount() {
    if (state.count >= 1) {
      emit(CounterState(count: state.count - 1));
    } else {
      state.count = 0;
    }
  }
}
