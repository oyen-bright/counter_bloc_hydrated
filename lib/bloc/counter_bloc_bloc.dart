import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'counter_bloc_event.dart';
part 'counter_bloc_state.dart';

class CounterBlocBloc extends Bloc<CounterBlocEvent, CounterBlocState>
    with HydratedMixin {
  CounterBlocBloc() : super(CounterBlocState.initial()) {
    // on<CounterBlocEvent>((event, emit) {
    //   emit(state.copyWith(count: state.count * 10));
    // });

    on<IncrementCountEvent>(
      (event, emit) {
        emit(state.copyWith(count: state.count + 1));
      },
    );

    on<DecrementCountEvent>(decreaseCount);
  }
  void decreaseCount(
      DecrementCountEvent event, Emitter<CounterBlocState> emit) {
    emit(state.copyWith(count: state.count - 1));
  }

  @override
  CounterBlocState? fromJson(Map<String, dynamic> json) {
    return CounterBlocState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(CounterBlocState state) {
    return state.toMap();
  }
}
